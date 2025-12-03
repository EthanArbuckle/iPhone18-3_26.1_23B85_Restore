@interface AABattery
+ (id)invalidBattery;
- (AABattery)initWithCoder:(id)coder;
- (AABattery)initWithLevel:(double)level productID:(unsigned int)d state:(int64_t)state type:(int64_t)type;
- (BOOL)fullyCharged;
- (BOOL)isChargingPaused;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToBattery:(id)battery;
- (BOOL)isExpired;
- (BOOL)updateWithAABattery:(id)battery;
- (double)lowLevel;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)chargeStatus;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setLevel:(double)level;
@end

@implementation AABattery

+ (id)invalidBattery
{
  v2 = objc_alloc_init(AABattery);
  [(AABattery *)v2 setState:0];
  [(AABattery *)v2 setType:0];

  return v2;
}

- (AABattery)initWithLevel:(double)level productID:(unsigned int)d state:(int64_t)state type:(int64_t)type
{
  v10 = [(AABattery *)self init];
  if (v10)
  {
    v10->_lastSeen = CFAbsoluteTimeGetCurrent();
    v10->_productID = d;
    v10->_state = state;
    v10->_type = type;
    [(AABattery *)v10 setLevel:level];
    v11 = v10;
  }

  return v10;
}

- (AABattery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AABattery *)self init];
  if (v5)
  {
    v6 = coderCopy;
    if ([v6 containsValueForKey:@"btyl"])
    {
      [v6 decodeDoubleForKey:@"btyl"];
      v5->_level = v7;
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_productID = 0;
    }

    v8 = v6;
    if ([v8 containsValueForKey:@"aabs"])
    {
      v5->_state = [v8 decodeIntegerForKey:@"aabs"];
    }

    v9 = v8;
    if ([v9 containsValueForKey:@"abrt"])
    {
      v5->_type = [v9 decodeIntegerForKey:@"abrt"];
    }

    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_chargingOBCTimeUntilCharged = 0;
    }

    v10 = v9;
    if ([v10 containsValueForKey:@"lstS"])
    {
      [v10 decodeDoubleForKey:@"lstS"];
      v5->_lastSeen = v11;
    }

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = coderCopy;
  if (self->_level != 0.0)
  {
    [coderCopy encodeDouble:@"btyl" forKey:?];
    coderCopy = v8;
  }

  productID = self->_productID;
  if (productID)
  {
    [v8 encodeInt64:productID forKey:@"pid"];
    coderCopy = v8;
  }

  state = self->_state;
  if (state)
  {
    [v8 encodeInteger:state forKey:@"aabs"];
    coderCopy = v8;
  }

  type = self->_type;
  if (type)
  {
    [v8 encodeInteger:type forKey:@"abrt"];
    coderCopy = v8;
  }

  if (self->_chargingOBCTimeUntilCharged)
  {
    [v8 encodeInteger:? forKey:?];
    coderCopy = v8;
  }

  if (self->_lastSeen != 0.0)
  {
    [v8 encodeDouble:@"lstS" forKey:?];
    coderCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(AABattery *)self level];
  [v4 setLevel:?];
  [v4 setProductID:{-[AABattery productID](self, "productID")}];
  [v4 setState:{-[AABattery state](self, "state")}];
  [v4 setType:{-[AABattery type](self, "type")}];
  [v4 setChargingOBCTimeUntilCharged:{-[AABattery chargingOBCTimeUntilCharged](self, "chargingOBCTimeUntilCharged")}];
  [(AABattery *)self lastSeen];
  [v4 setLastSeen:?];
  [v4 setLastOrigin:{-[AABattery lastOrigin](self, "lastOrigin")}];
  [v4 setSourceFlags:{-[AABattery sourceFlags](self, "sourceFlags")}];
  return v4;
}

- (id)description
{
  type = self->_type;
  if ((type - 1) < 4)
  {
    v4 = off_278CDE410[type - 1];
  }

  [(AABattery *)self charging];
  v17[1] = 0;
  lastSeen = self->_lastSeen;
  v13 = CUPrintDateCF();
  NSAppendPrintF_safe();
  v6 = 0;

  state = self->_state;
  if (state == 4)
  {
    v16 = v6;
    v8 = &v16;
  }

  else
  {
    if (state != 3)
    {
      goto LABEL_8;
    }

    v17[0] = v6;
    [(AABattery *)self chargingOBCTimeUntilCharged];
    v8 = v17;
  }

  NSAppendPrintF_safe();
  v9 = *v8;

  v6 = v9;
LABEL_8:
  if (self->_sourceFlags)
  {
    v14 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v10 = v6;

    v6 = v10;
  }

  v15 = self->_level * 100.0;
  v11 = NSPrintF();

  return v11;
}

- (int64_t)chargeStatus
{
  if (![(AABattery *)self valid])
  {
    return 0;
  }

  if ([(AABattery *)self fullyCharged])
  {
    return 500;
  }

  [(AABattery *)self level];
  if (v4 <= 0.05)
  {
    return 100;
  }

  [(AABattery *)self level];
  if (v5 <= 0.1)
  {
    return 200;
  }

  [(AABattery *)self level];
  v7 = v6;
  [(AABattery *)self lowLevel];
  if (v7 <= v8)
  {
    return 300;
  }

  else
  {
    return 400;
  }
}

- (BOOL)fullyCharged
{
  if ([(AABattery *)self chargingDEOC])
  {
    v3 = 0.8;
  }

  else
  {
    v3 = 1.0;
  }

  [(AABattery *)self level];
  return v4 >= v3;
}

- (unint64_t)hash
{
  v9[0] = [(AABattery *)self chargingOBCTimeUntilCharged];
  v9[1] = [(AABattery *)self state];
  v9[2] = [(AABattery *)self type];
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v9 length:3];
  v4 = [v3 hash];
  v5 = MEMORY[0x277CCABB0];
  [(AABattery *)self level];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];

  return v7 ^ v4;
}

- (BOOL)isChargingPaused
{
  if ([(AABattery *)self state]!= 3)
  {
    return 0;
  }

  [(AABattery *)self level];
  return v3 >= 0.8;
}

- (BOOL)isEqualToBattery:(id)battery
{
  batteryCopy = battery;
  chargingOBCTimeUntilCharged = [(AABattery *)self chargingOBCTimeUntilCharged];
  if (chargingOBCTimeUntilCharged == [batteryCopy chargingOBCTimeUntilCharged] && (-[AABattery level](self, "level"), v7 = v6, objc_msgSend(batteryCopy, "level"), v7 == v8) && (v9 = -[AABattery state](self, "state"), v9 == objc_msgSend(batteryCopy, "state")))
  {
    type = [(AABattery *)self type];
    v11 = type == [batteryCopy type];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(AABattery *)self isEqualToBattery:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isExpired
{
  if ([(AABattery *)self sourceFlags])
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  [(AABattery *)self lastSeen];
  return Current - v5 >= 10.0;
}

- (double)lowLevel
{
  isCaseBattery = [(AABattery *)self isCaseBattery];
  result = 0.25;
  if (!isCaseBattery)
  {
    return dbl_241535F70[[(AABattery *)self productID]== 8208];
  }

  return result;
}

- (BOOL)updateWithAABattery:(id)battery
{
  batteryCopy = battery;
  type = [(AABattery *)self type];
  if (type == [batteryCopy type])
  {
    -[AABattery setSourceFlags:](self, "setSourceFlags:", -[AABattery sourceFlags](self, "sourceFlags") | [batteryCopy sourceFlags]);
    chargingOBCTimeUntilCharged = [(AABattery *)self chargingOBCTimeUntilCharged];
    chargingOBCTimeUntilCharged2 = [batteryCopy chargingOBCTimeUntilCharged];
    inAACP = [batteryCopy inAACP];
    if (chargingOBCTimeUntilCharged == chargingOBCTimeUntilCharged2)
    {
      v9 = 1;
    }

    else
    {
      v9 = inAACP;
    }

    if ((v9 & 1) == 0)
    {
      -[AABattery setChargingOBCTimeUntilCharged:](self, "setChargingOBCTimeUntilCharged:", [batteryCopy chargingOBCTimeUntilCharged]);
    }

    v10 = v9 ^ 1;
    -[AABattery setLastOrigin:](self, "setLastOrigin:", [batteryCopy lastOrigin]);
    [batteryCopy lastSeen];
    [(AABattery *)self setLastSeen:?];
    if (!-[AABattery inAACP](self, "inAACP") || [batteryCopy inAACP])
    {
      [(AABattery *)self level];
      v12 = v11;
      [batteryCopy level];
      if (v12 != v13)
      {
        [batteryCopy level];
        [(AABattery *)self setLevel:?];
        v10 = 1;
      }

      state = [(AABattery *)self state];
      if (state != [batteryCopy state])
      {
        -[AABattery setState:](self, "setState:", [batteryCopy state]);
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setLevel:(double)level
{
  if (level == 0.0 || self->_level != level)
  {
    if (level < 0.01)
    {
      v3 = 0.01;
LABEL_7:
      self->_level = v3;
      return;
    }

    if (level > 1.0)
    {
      v3 = 1.0;
      goto LABEL_7;
    }

    self->_level = level;
  }
}

@end