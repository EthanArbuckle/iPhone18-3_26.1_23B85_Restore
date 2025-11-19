@interface NEPathRule
- (BOOL)isAggregateRule;
- (BOOL)isDefaultPathRule;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsCellularBehavior:(int64_t)a3;
- (BOOL)supportsWiFiBehavior:(int64_t)a3;
- (NEPathRule)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)cellularBehavior;
- (int64_t)wifiBehavior;
- (void)addCellularBehavior:(int64_t)a3 grade:(int64_t)a4;
- (void)addWiFiBehavior:(int64_t)a3 grade:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setCellularBehavior:(int64_t)a3;
- (void)setWifiBehavior:(int64_t)a3;
@end

@implementation NEPathRule

- (int64_t)cellularBehavior
{
  if (![(NEPathRule *)self isAggregateRule])
  {
    if (self)
    {
      return self->_internalCellularBehavior;
    }

    else
    {
      return 0;
    }
  }

  if (self)
  {
    Property = objc_getProperty(self, v3, 96, 1);
    v6 = objc_getProperty(self, v5, 88, 1);
    if (Property)
    {
      if (v6)
      {
        v8 = [objc_getProperty(self v7];
        v10 = [objc_getProperty(self v9];
        objc_opt_self();
        result = v8;
        if (v8 != v10)
        {
          result = 1;
          if (v8 != 1 && v10 != 1)
          {
            if (v10)
            {
              v12 = v8 == 0;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              return 0;
            }

            else
            {
              return 2;
            }
          }
        }

        return result;
      }

      v6 = objc_getProperty(self, v7, 96, 1);
    }
  }

  else
  {
    v6 = 0;
  }

  return [v6 integerValue];
}

- (BOOL)isAggregateRule
{
  if (!a1)
  {
    return 0;
  }

  v3 = 1;
  if (!objc_getProperty(a1, a2, 96, 1) && !objc_getProperty(a1, v4, 88, 1) && !objc_getProperty(a1, v5, 120, 1))
  {
    return objc_getProperty(a1, v6, 112, 1) != 0;
  }

  return v3;
}

- (BOOL)isDefaultPathRule
{
  v3 = [(NEAppRule *)self matchSigningIdentifier];
  if ([v3 isEqualToString:@"PathRuleDefaultIdentifier"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NEAppRule *)self matchSigningIdentifier];
    v4 = [v5 isEqualToString:@"PathRuleDefaultNonSystemIdentifier"];
  }

  return v4;
}

- (int64_t)wifiBehavior
{
  if (![(NEPathRule *)self isAggregateRule])
  {
    if (self)
    {
      return self->_internalWiFiBehavior;
    }

    else
    {
      return 0;
    }
  }

  if (self)
  {
    Property = objc_getProperty(self, v3, 120, 1);
    v6 = objc_getProperty(self, v5, 112, 1);
    if (Property)
    {
      if (v6)
      {
        v8 = [objc_getProperty(self v7];
        v10 = [objc_getProperty(self v9];
        objc_opt_self();
        result = v8;
        if (v8 != v10)
        {
          result = 1;
          if (v8 != 1 && v10 != 1)
          {
            if (v10)
            {
              v12 = v8 == 0;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              return 0;
            }

            else
            {
              return 2;
            }
          }
        }

        return result;
      }

      v6 = objc_getProperty(self, v7, 120, 1);
    }
  }

  else
  {
    v6 = 0;
  }

  return [v6 integerValue];
}

- (BOOL)supportsWiFiBehavior:(int64_t)a3
{
  if (!self)
  {
    return 1;
  }

  v5 = 1;
  if (objc_getProperty(self, a2, 120, 1))
  {
    v7 = [objc_getProperty(self v6];
    return v7 != 1 && (a3 != 2 || v7 != 0);
  }

  return v5;
}

- (void)addWiFiBehavior:(int64_t)a3 grade:(int64_t)a4
{
  if (a4 == 1)
  {
    if (self && objc_getProperty(self, a2, 120, 1))
    {
      v15 = [objc_getProperty(self v14];
      v16 = MEMORY[0x1E696AD98];
      objc_opt_self();
      v17 = 1;
      if (v15)
      {
        v18 = a3 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = 2;
      if (v18)
      {
        v19 = 0;
      }

      if (v15 == 1)
      {
        v19 = 1;
      }

      if (a3 != 1)
      {
        v17 = v19;
      }

      if (v15 == a3)
      {
        v20 = a3;
      }

      else
      {
        v20 = v17;
      }

      v13 = [v16 numberWithInteger:v20];
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      if (!self)
      {
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___NEPathRule__aggregateEnterpriseWiFi;
    goto LABEL_38;
  }

  if (a4 != 2)
  {
    return;
  }

  if (self && objc_getProperty(self, a2, 112, 1))
  {
    v7 = [objc_getProperty(self v6];
    v8 = MEMORY[0x1E696AD98];
    objc_opt_self();
    v9 = 1;
    if (v7)
    {
      v10 = a3 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = 2;
    if (v10)
    {
      v11 = 0;
    }

    if (v7 == 1)
    {
      v11 = 1;
    }

    if (a3 != 1)
    {
      v9 = v11;
    }

    if (v7 == a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = v9;
    }

    v13 = [v8 numberWithInteger:v12];
    goto LABEL_35;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  if (!self)
  {
LABEL_42:
    v22 = v13;
    goto LABEL_39;
  }

LABEL_35:
  v21 = &OBJC_IVAR___NEPathRule__aggregatePersonalWiFi;
LABEL_38:
  v22 = v13;
  objc_setProperty_atomic(self, v13, v13, *v21);
LABEL_39:
}

- (BOOL)supportsCellularBehavior:(int64_t)a3
{
  if (!self)
  {
    return 1;
  }

  v5 = 1;
  if (objc_getProperty(self, a2, 96, 1))
  {
    v7 = [objc_getProperty(self v6];
    return v7 != 1 && (a3 != 2 || v7 != 0);
  }

  return v5;
}

- (void)addCellularBehavior:(int64_t)a3 grade:(int64_t)a4
{
  if (a4 == 1)
  {
    if (self && objc_getProperty(self, a2, 96, 1))
    {
      v15 = [objc_getProperty(self v14];
      v16 = MEMORY[0x1E696AD98];
      objc_opt_self();
      v17 = 1;
      if (v15)
      {
        v18 = a3 == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = 2;
      if (v18)
      {
        v19 = 0;
      }

      if (v15 == 1)
      {
        v19 = 1;
      }

      if (a3 != 1)
      {
        v17 = v19;
      }

      if (v15 == a3)
      {
        v20 = a3;
      }

      else
      {
        v20 = v17;
      }

      v13 = [v16 numberWithInteger:v20];
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      if (!self)
      {
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___NEPathRule__aggregateEnterpriseCellular;
    goto LABEL_38;
  }

  if (a4 != 2)
  {
    return;
  }

  if (self && objc_getProperty(self, a2, 88, 1))
  {
    v7 = [objc_getProperty(self v6];
    v8 = MEMORY[0x1E696AD98];
    objc_opt_self();
    v9 = 1;
    if (v7)
    {
      v10 = a3 == 0;
    }

    else
    {
      v10 = 1;
    }

    v11 = 2;
    if (v10)
    {
      v11 = 0;
    }

    if (v7 == 1)
    {
      v11 = 1;
    }

    if (a3 != 1)
    {
      v9 = v11;
    }

    if (v7 == a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = v9;
    }

    v13 = [v8 numberWithInteger:v12];
    goto LABEL_35;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  if (!self)
  {
LABEL_42:
    v22 = v13;
    goto LABEL_39;
  }

LABEL_35:
  v21 = &OBJC_IVAR___NEPathRule__aggregatePersonalCellular;
LABEL_38:
  v22 = v13;
  objc_setProperty_atomic(self, v13, v13, *v21);
LABEL_39:
}

- (void)setWifiBehavior:(int64_t)a3
{
  v5 = [(NEPathRule *)self isAggregateRule];
  if (self)
  {
    if (!v5)
    {
      self->_internalWiFiBehavior = a3;
    }
  }
}

- (void)setCellularBehavior:(int64_t)a3
{
  v5 = [(NEPathRule *)self isAggregateRule];
  if (self)
  {
    if (!v5)
    {
      self->_internalCellularBehavior = a3;
    }
  }
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  [v3 appendString:@"{"];
  v4 = [(NEAppRule *)self matchSigningIdentifier];
  [v3 appendPrettyObject:v4 withName:@"matchSigningIdentifier" andIndent:0 options:0];

  v5 = [(NEAppRule *)self matchPath];
  [v3 appendPrettyObject:v5 withName:@"matchPath" andIndent:0 options:0];

  [v3 appendPrettyInt:-[NEPathRule cellularBehavior](self withName:"cellularBehavior") andIndent:@"cellularBehavior" options:{0, 0}];
  [v3 appendPrettyBOOL:-[NEPathRule denyCellularFallback](self withName:"denyCellularFallback") andIndent:@"denyCellularFallback" options:{0, 0}];
  [v3 appendPrettyBOOL:-[NEPathRule denyMulticast](self withName:"denyMulticast") andIndent:@"denyMulticast" options:{0, 0}];
  v6 = [(NEPathRule *)self temporaryAllowMulticastNetworkName];
  [v3 appendPrettyObject:v6 withName:@"temporaryAllowMulticastNetworkName" andIndent:0 options:0];

  [v3 appendPrettyBOOL:-[NEPathRule multicastPreferenceSet](self withName:"multicastPreferenceSet") andIndent:@"multicastPreferenceSet" options:{0, 0}];
  [v3 appendPrettyBOOL:-[NEPathRule isIdentifierExternal](self withName:"isIdentifierExternal") andIndent:@"isIdentifierExternal" options:{0, 0}];
  [v3 appendPrettyInt:-[NEPathRule wifiBehavior](self withName:"wifiBehavior") andIndent:@"wifiBehavior" options:{0, 0}];
  if ([(NEPathRule *)self isAggregateRule])
  {
    [v3 appendPrettyBOOL:-[NEPathRule supportsCellularBehavior:](self withName:"supportsCellularBehavior:" andIndent:0) options:{@"supportsAllowCellular", 0, 0}];
    [v3 appendPrettyBOOL:-[NEPathRule supportsCellularBehavior:](self withName:"supportsCellularBehavior:" andIndent:1) options:{@"supportsDenyCellular", 0, 0}];
    [v3 appendPrettyBOOL:-[NEPathRule supportsCellularBehavior:](self withName:"supportsCellularBehavior:" andIndent:2) options:{@"supportsAllowCellularWhileRoaming", 0, 0}];
  }

  [v3 appendPrettyBOOL:-[NEPathRule denyAll](self withName:"denyAll") andIndent:@"denyAll" options:{0, 0}];
  [v3 appendString:@"\n}"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = NEPathRule;
  v4 = [(NEAppRule *)&v15 copyWithZone:a3];
  v5 = v4;
  if (self)
  {
    internalCellularBehavior = self->_internalCellularBehavior;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  internalCellularBehavior = 0;
  if (v4)
  {
LABEL_3:
    v4[13] = internalCellularBehavior;
  }

LABEL_4:
  [v4 setDenyCellularFallback:{-[NEPathRule denyCellularFallback](self, "denyCellularFallback")}];
  [v5 setDenyMulticast:{-[NEPathRule denyMulticast](self, "denyMulticast")}];
  [v5 setMulticastPreferenceSet:{-[NEPathRule multicastPreferenceSet](self, "multicastPreferenceSet")}];
  [v5 setIsIdentifierExternal:{-[NEPathRule isIdentifierExternal](self, "isIdentifierExternal")}];
  if (self)
  {
    Property = objc_getProperty(self, v7, 96, 1);
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  Property = 0;
  if (v5)
  {
LABEL_6:
    objc_setProperty_atomic(v5, v7, Property, 96);
  }

LABEL_7:
  if (self)
  {
    v9 = objc_getProperty(self, v7, 88, 1);
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = 0;
  if (v5)
  {
LABEL_9:
    objc_setProperty_atomic(v5, v7, v9, 88);
  }

LABEL_10:
  if (self)
  {
    internalWiFiBehavior = self->_internalWiFiBehavior;
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  internalWiFiBehavior = 0;
  if (v5)
  {
LABEL_12:
    v5[16] = internalWiFiBehavior;
  }

LABEL_13:
  if (self)
  {
    v11 = objc_getProperty(self, v7, 120, 1);
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v11 = 0;
  if (v5)
  {
LABEL_15:
    objc_setProperty_atomic(v5, v7, v11, 120);
  }

LABEL_16:
  if (!self)
  {
    v12 = 0;
    if (!v5)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v12 = objc_getProperty(self, v7, 112, 1);
  if (v5)
  {
LABEL_18:
    objc_setProperty_atomic(v5, v7, v12, 112);
  }

LABEL_19:
  [v5 setDenyAll:{-[NEPathRule denyAll](self, "denyAll", v12)}];
  v13 = [(NEPathRule *)self temporaryAllowMulticastNetworkName];
  [v5 setTemporaryAllowMulticastNetworkName:v13];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NEPathRule;
  [(NEAppRule *)&v11 encodeWithCoder:v4];
  if (self)
  {
    [v4 encodeInt32:self->_internalCellularBehavior forKey:@"CellularBehavior"];
    [v4 encodeBool:-[NEPathRule denyCellularFallback](self forKey:{"denyCellularFallback"), @"DenyCellularFallback"}];
    [v4 encodeBool:-[NEPathRule denyMulticast](self forKey:{"denyMulticast"), @"DenyMulticast"}];
    [v4 encodeBool:-[NEPathRule multicastPreferenceSet](self forKey:{"multicastPreferenceSet"), @"MulticastPreferenceSet"}];
    [v4 encodeBool:-[NEPathRule isIdentifierExternal](self forKey:{"isIdentifierExternal"), @"IsIdentifierExternal"}];
    [v4 encodeObject:objc_getProperty(self forKey:{v5, 96, 1), @"AggregateEnterpriseCellularBehavior"}];
    [v4 encodeObject:objc_getProperty(self forKey:{v6, 88, 1), @"AggregatePersonalCellularBehavior"}];
    [v4 encodeInt32:self->_internalWiFiBehavior forKey:@"WiFiBehavior"];
    [v4 encodeObject:objc_getProperty(self forKey:{v7, 120, 1), @"AggregateEnterpriseWiFiBehavior"}];
    Property = objc_getProperty(self, v8, 112, 1);
  }

  else
  {
    [v4 encodeInt32:0 forKey:@"CellularBehavior"];
    [v4 encodeBool:objc_msgSend(0 forKey:{"denyCellularFallback"), @"DenyCellularFallback"}];
    [v4 encodeBool:objc_msgSend(0 forKey:{"denyMulticast"), @"DenyMulticast"}];
    [v4 encodeBool:objc_msgSend(0 forKey:{"multicastPreferenceSet"), @"MulticastPreferenceSet"}];
    [v4 encodeBool:objc_msgSend(0 forKey:{"isIdentifierExternal"), @"IsIdentifierExternal"}];
    [v4 encodeObject:0 forKey:@"AggregateEnterpriseCellularBehavior"];
    [v4 encodeObject:0 forKey:@"AggregatePersonalCellularBehavior"];
    [v4 encodeInt32:0 forKey:@"WiFiBehavior"];
    [v4 encodeObject:0 forKey:@"AggregateEnterpriseWiFiBehavior"];
    Property = 0;
  }

  [v4 encodeObject:Property forKey:@"AggregatePersonalWiFiBehavior"];
  [v4 encodeBool:-[NEPathRule denyAll](self forKey:{"denyAll"), @"DenyAll"}];
  v10 = [(NEPathRule *)self temporaryAllowMulticastNetworkName];
  [v4 encodeObject:v10 forKey:@"TemporaryAllowMulticastNetworkName"];
}

- (NEPathRule)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NEPathRule;
  v5 = [(NEAppRule *)&v17 initWithCoder:v4];
  if (v5)
  {
    v5->_internalCellularBehavior = [v4 decodeInt32ForKey:@"CellularBehavior"];
    v5->_denyCellularFallback = [v4 decodeBoolForKey:@"DenyCellularFallback"];
    v5->_denyMulticast = [v4 decodeBoolForKey:@"DenyMulticast"];
    v5->_multicastPreferenceSet = [v4 decodeBoolForKey:@"MulticastPreferenceSet"];
    v5->_isIdentifierExternal = [v4 decodeBoolForKey:@"IsIdentifierExternal"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AggregateEnterpriseCellularBehavior"];
    aggregateEnterpriseCellular = v5->_aggregateEnterpriseCellular;
    v5->_aggregateEnterpriseCellular = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AggregatePersonalCellularBehavior"];
    aggregatePersonalCellular = v5->_aggregatePersonalCellular;
    v5->_aggregatePersonalCellular = v8;

    v5->_internalWiFiBehavior = [v4 decodeInt32ForKey:@"WiFiBehavior"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AggregateEnterpriseWiFiBehavior"];
    aggregateEnterpriseWiFi = v5->_aggregateEnterpriseWiFi;
    v5->_aggregateEnterpriseWiFi = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AggregatePersonalWiFiBehavior"];
    aggregatePersonalWiFi = v5->_aggregatePersonalWiFi;
    v5->_aggregatePersonalWiFi = v12;

    v5->_denyAll = [v4 decodeBoolForKey:@"DenyAll"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TemporaryAllowMulticastNetworkName"];
    temporaryAllowMulticastNetworkName = v5->_temporaryAllowMulticastNetworkName;
    v5->_temporaryAllowMulticastNetworkName = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [v4 matchSigningIdentifier];
    v8 = [(NEAppRule *)self matchSigningIdentifier];
    if ([v7 isEqualToString:v8])
    {
      v9 = [v4 matchPath];
      v10 = [(NEAppRule *)self matchPath];
      if ([v9 isEqualToString:v10])
      {
        v11 = [v4 temporaryAllowMulticastNetworkName];
        v12 = [(NEPathRule *)self temporaryAllowMulticastNetworkName];
        if ([v11 isEqualToString:v12] && (v13 = objc_msgSend(v4, "cellularBehavior"), v13 == -[NEPathRule cellularBehavior](self, "cellularBehavior")) && (v14 = objc_msgSend(v4, "wifiBehavior"), v14 == -[NEPathRule wifiBehavior](self, "wifiBehavior")) && (v15 = objc_msgSend(v4, "isIdentifierExternal"), v15 == -[NEPathRule isIdentifierExternal](self, "isIdentifierExternal")) && (v16 = objc_msgSend(v4, "denyMulticast"), v16 == -[NEPathRule denyMulticast](self, "denyMulticast")) && (v17 = objc_msgSend(v4, "multicastPreferenceSet"), v17 == -[NEPathRule multicastPreferenceSet](self, "multicastPreferenceSet")))
        {
          v19 = [v4 denyAll];
          v6 = v19 ^ [(NEPathRule *)self denyAll]^ 1;
        }

        else
        {
          LOBYTE(v6) = 0;
        }
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end