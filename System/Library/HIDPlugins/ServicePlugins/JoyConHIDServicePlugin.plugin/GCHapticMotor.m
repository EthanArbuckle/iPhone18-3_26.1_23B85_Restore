@interface GCHapticMotor
- (GCHapticMotor)initWithCoder:(id)a3;
- (GCHapticMotor)initWithIndex:(int)a3 name:(id)a4 features:(unint64_t)a5 frequency:(float)a6 amplitude:(float)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyValuesFrom:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enqueueHapticTransientEvent:(id)a3;
@end

@implementation GCHapticMotor

- (GCHapticMotor)initWithIndex:(int)a3 name:(id)a4 features:(unint64_t)a5 frequency:(float)a6 amplitude:(float)a7
{
  v13 = a4;
  v19.receiver = self;
  v19.super_class = GCHapticMotor;
  v14 = [(GCHapticMotor *)&v19 init];
  v15 = v14;
  if (v14)
  {
    v14->_index = a3;
    objc_storeStrong(&v14->_name, a4);
    v15->_features = a5;
    v15->_frequency = a6;
    v15->_amplitude = a7;
    v16 = +[NSMutableArray array];
    queuedTransients = v15->_queuedTransients;
    v15->_queuedTransients = v16;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  index = self->_index;
  v7 = a3;
  [v7 encodeInteger:index forKey:@"_index"];
  [v7 encodeObject:self->_name forKey:@"_name"];
  [v7 encodeInteger:self->_features forKey:@"_features"];
  *&v5 = self->_frequency;
  [v7 encodeFloat:@"_frequency" forKey:v5];
  *&v6 = self->_amplitude;
  [v7 encodeFloat:@"_amplitude" forKey:v6];
}

- (GCHapticMotor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"_index"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
  v7 = [v4 decodeIntegerForKey:@"_features"];
  [v4 decodeFloatForKey:@"_frequency"];
  v9 = v8;
  [v4 decodeFloatForKey:@"_amplitude"];
  v11 = v10;

  LODWORD(v12) = v9;
  LODWORD(v13) = v11;
  v14 = [(GCHapticMotor *)self initWithIndex:v5 name:v6 features:v7 frequency:v12 amplitude:v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(GCHapticMotor *)self name];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[3];
    v5[3] = v7;

    *(v5 + 2) = [(GCHapticMotor *)self index];
    v5[4] = [(GCHapticMotor *)self features];
    [(GCHapticMotor *)self frequency];
    *(v5 + 3) = v9;
    [(GCHapticMotor *)self amplitude];
    *(v5 + 4) = v10;
  }

  return v5;
}

- (void)applyValuesFrom:(id)a3
{
  v4 = a3;
  [v4 frequency];
  [(GCHapticMotor *)self setFrequency:?];
  if (([(GCHapticMotor *)self features]& 1) != 0)
  {
    [v4 amplitude];
    [(GCHapticMotor *)self setAmplitude:?];
  }
}

- (void)enqueueHapticTransientEvent:(id)a3
{
  v4 = a3;
  if ((-[GCHapticMotor features](self, "features") & 2) != 0 && [v4 type] == &dword_0 + 1)
  {
    [(NSMutableArray *)self->_queuedTransients addObject:v4];
  }
}

@end