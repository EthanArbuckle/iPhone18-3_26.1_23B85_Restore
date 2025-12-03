@interface NEPathRule
- (BOOL)isAggregateRule;
- (BOOL)isDefaultPathRule;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsCellularBehavior:(int64_t)behavior;
- (BOOL)supportsWiFiBehavior:(int64_t)behavior;
- (NEPathRule)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)cellularBehavior;
- (int64_t)wifiBehavior;
- (void)addCellularBehavior:(int64_t)behavior grade:(int64_t)grade;
- (void)addWiFiBehavior:(int64_t)behavior grade:(int64_t)grade;
- (void)encodeWithCoder:(id)coder;
- (void)setCellularBehavior:(int64_t)behavior;
- (void)setWifiBehavior:(int64_t)behavior;
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
  if (!self)
  {
    return 0;
  }

  v3 = 1;
  if (!objc_getProperty(self, a2, 96, 1) && !objc_getProperty(self, v4, 88, 1) && !objc_getProperty(self, v5, 120, 1))
  {
    return objc_getProperty(self, v6, 112, 1) != 0;
  }

  return v3;
}

- (BOOL)isDefaultPathRule
{
  matchSigningIdentifier = [(NEAppRule *)self matchSigningIdentifier];
  if ([matchSigningIdentifier isEqualToString:@"PathRuleDefaultIdentifier"])
  {
    v4 = 1;
  }

  else
  {
    matchSigningIdentifier2 = [(NEAppRule *)self matchSigningIdentifier];
    v4 = [matchSigningIdentifier2 isEqualToString:@"PathRuleDefaultNonSystemIdentifier"];
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

- (BOOL)supportsWiFiBehavior:(int64_t)behavior
{
  if (!self)
  {
    return 1;
  }

  v5 = 1;
  if (objc_getProperty(self, a2, 120, 1))
  {
    v7 = [objc_getProperty(self v6];
    return v7 != 1 && (behavior != 2 || v7 != 0);
  }

  return v5;
}

- (void)addWiFiBehavior:(int64_t)behavior grade:(int64_t)grade
{
  if (grade == 1)
  {
    if (self && objc_getProperty(self, a2, 120, 1))
    {
      v15 = [objc_getProperty(self v14];
      v16 = MEMORY[0x1E696AD98];
      objc_opt_self();
      v17 = 1;
      if (v15)
      {
        v18 = behavior == 0;
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

      if (behavior != 1)
      {
        v17 = v19;
      }

      if (v15 == behavior)
      {
        behaviorCopy = behavior;
      }

      else
      {
        behaviorCopy = v17;
      }

      v13 = [v16 numberWithInteger:behaviorCopy];
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:behavior];
      if (!self)
      {
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___NEPathRule__aggregateEnterpriseWiFi;
    goto LABEL_38;
  }

  if (grade != 2)
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
      v10 = behavior == 0;
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

    if (behavior != 1)
    {
      v9 = v11;
    }

    if (v7 == behavior)
    {
      behaviorCopy2 = behavior;
    }

    else
    {
      behaviorCopy2 = v9;
    }

    v13 = [v8 numberWithInteger:behaviorCopy2];
    goto LABEL_35;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:behavior];
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

- (BOOL)supportsCellularBehavior:(int64_t)behavior
{
  if (!self)
  {
    return 1;
  }

  v5 = 1;
  if (objc_getProperty(self, a2, 96, 1))
  {
    v7 = [objc_getProperty(self v6];
    return v7 != 1 && (behavior != 2 || v7 != 0);
  }

  return v5;
}

- (void)addCellularBehavior:(int64_t)behavior grade:(int64_t)grade
{
  if (grade == 1)
  {
    if (self && objc_getProperty(self, a2, 96, 1))
    {
      v15 = [objc_getProperty(self v14];
      v16 = MEMORY[0x1E696AD98];
      objc_opt_self();
      v17 = 1;
      if (v15)
      {
        v18 = behavior == 0;
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

      if (behavior != 1)
      {
        v17 = v19;
      }

      if (v15 == behavior)
      {
        behaviorCopy = behavior;
      }

      else
      {
        behaviorCopy = v17;
      }

      v13 = [v16 numberWithInteger:behaviorCopy];
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:behavior];
      if (!self)
      {
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___NEPathRule__aggregateEnterpriseCellular;
    goto LABEL_38;
  }

  if (grade != 2)
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
      v10 = behavior == 0;
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

    if (behavior != 1)
    {
      v9 = v11;
    }

    if (v7 == behavior)
    {
      behaviorCopy2 = behavior;
    }

    else
    {
      behaviorCopy2 = v9;
    }

    v13 = [v8 numberWithInteger:behaviorCopy2];
    goto LABEL_35;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:behavior];
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

- (void)setWifiBehavior:(int64_t)behavior
{
  isAggregateRule = [(NEPathRule *)self isAggregateRule];
  if (self)
  {
    if (!isAggregateRule)
    {
      self->_internalWiFiBehavior = behavior;
    }
  }
}

- (void)setCellularBehavior:(int64_t)behavior
{
  isAggregateRule = [(NEPathRule *)self isAggregateRule];
  if (self)
  {
    if (!isAggregateRule)
    {
      self->_internalCellularBehavior = behavior;
    }
  }
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:0];
  [v3 appendString:@"{"];
  matchSigningIdentifier = [(NEAppRule *)self matchSigningIdentifier];
  [v3 appendPrettyObject:matchSigningIdentifier withName:@"matchSigningIdentifier" andIndent:0 options:0];

  matchPath = [(NEAppRule *)self matchPath];
  [v3 appendPrettyObject:matchPath withName:@"matchPath" andIndent:0 options:0];

  [v3 appendPrettyInt:-[NEPathRule cellularBehavior](self withName:"cellularBehavior") andIndent:@"cellularBehavior" options:{0, 0}];
  [v3 appendPrettyBOOL:-[NEPathRule denyCellularFallback](self withName:"denyCellularFallback") andIndent:@"denyCellularFallback" options:{0, 0}];
  [v3 appendPrettyBOOL:-[NEPathRule denyMulticast](self withName:"denyMulticast") andIndent:@"denyMulticast" options:{0, 0}];
  temporaryAllowMulticastNetworkName = [(NEPathRule *)self temporaryAllowMulticastNetworkName];
  [v3 appendPrettyObject:temporaryAllowMulticastNetworkName withName:@"temporaryAllowMulticastNetworkName" andIndent:0 options:0];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v15.receiver = self;
  v15.super_class = NEPathRule;
  v4 = [(NEAppRule *)&v15 copyWithZone:zone];
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
  temporaryAllowMulticastNetworkName = [(NEPathRule *)self temporaryAllowMulticastNetworkName];
  [v5 setTemporaryAllowMulticastNetworkName:temporaryAllowMulticastNetworkName];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NEPathRule;
  [(NEAppRule *)&v11 encodeWithCoder:coderCopy];
  if (self)
  {
    [coderCopy encodeInt32:self->_internalCellularBehavior forKey:@"CellularBehavior"];
    [coderCopy encodeBool:-[NEPathRule denyCellularFallback](self forKey:{"denyCellularFallback"), @"DenyCellularFallback"}];
    [coderCopy encodeBool:-[NEPathRule denyMulticast](self forKey:{"denyMulticast"), @"DenyMulticast"}];
    [coderCopy encodeBool:-[NEPathRule multicastPreferenceSet](self forKey:{"multicastPreferenceSet"), @"MulticastPreferenceSet"}];
    [coderCopy encodeBool:-[NEPathRule isIdentifierExternal](self forKey:{"isIdentifierExternal"), @"IsIdentifierExternal"}];
    [coderCopy encodeObject:objc_getProperty(self forKey:{v5, 96, 1), @"AggregateEnterpriseCellularBehavior"}];
    [coderCopy encodeObject:objc_getProperty(self forKey:{v6, 88, 1), @"AggregatePersonalCellularBehavior"}];
    [coderCopy encodeInt32:self->_internalWiFiBehavior forKey:@"WiFiBehavior"];
    [coderCopy encodeObject:objc_getProperty(self forKey:{v7, 120, 1), @"AggregateEnterpriseWiFiBehavior"}];
    Property = objc_getProperty(self, v8, 112, 1);
  }

  else
  {
    [coderCopy encodeInt32:0 forKey:@"CellularBehavior"];
    [coderCopy encodeBool:objc_msgSend(0 forKey:{"denyCellularFallback"), @"DenyCellularFallback"}];
    [coderCopy encodeBool:objc_msgSend(0 forKey:{"denyMulticast"), @"DenyMulticast"}];
    [coderCopy encodeBool:objc_msgSend(0 forKey:{"multicastPreferenceSet"), @"MulticastPreferenceSet"}];
    [coderCopy encodeBool:objc_msgSend(0 forKey:{"isIdentifierExternal"), @"IsIdentifierExternal"}];
    [coderCopy encodeObject:0 forKey:@"AggregateEnterpriseCellularBehavior"];
    [coderCopy encodeObject:0 forKey:@"AggregatePersonalCellularBehavior"];
    [coderCopy encodeInt32:0 forKey:@"WiFiBehavior"];
    [coderCopy encodeObject:0 forKey:@"AggregateEnterpriseWiFiBehavior"];
    Property = 0;
  }

  [coderCopy encodeObject:Property forKey:@"AggregatePersonalWiFiBehavior"];
  [coderCopy encodeBool:-[NEPathRule denyAll](self forKey:{"denyAll"), @"DenyAll"}];
  temporaryAllowMulticastNetworkName = [(NEPathRule *)self temporaryAllowMulticastNetworkName];
  [coderCopy encodeObject:temporaryAllowMulticastNetworkName forKey:@"TemporaryAllowMulticastNetworkName"];
}

- (NEPathRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NEPathRule;
  v5 = [(NEAppRule *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_internalCellularBehavior = [coderCopy decodeInt32ForKey:@"CellularBehavior"];
    v5->_denyCellularFallback = [coderCopy decodeBoolForKey:@"DenyCellularFallback"];
    v5->_denyMulticast = [coderCopy decodeBoolForKey:@"DenyMulticast"];
    v5->_multicastPreferenceSet = [coderCopy decodeBoolForKey:@"MulticastPreferenceSet"];
    v5->_isIdentifierExternal = [coderCopy decodeBoolForKey:@"IsIdentifierExternal"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AggregateEnterpriseCellularBehavior"];
    aggregateEnterpriseCellular = v5->_aggregateEnterpriseCellular;
    v5->_aggregateEnterpriseCellular = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AggregatePersonalCellularBehavior"];
    aggregatePersonalCellular = v5->_aggregatePersonalCellular;
    v5->_aggregatePersonalCellular = v8;

    v5->_internalWiFiBehavior = [coderCopy decodeInt32ForKey:@"WiFiBehavior"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AggregateEnterpriseWiFiBehavior"];
    aggregateEnterpriseWiFi = v5->_aggregateEnterpriseWiFi;
    v5->_aggregateEnterpriseWiFi = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AggregatePersonalWiFiBehavior"];
    aggregatePersonalWiFi = v5->_aggregatePersonalWiFi;
    v5->_aggregatePersonalWiFi = v12;

    v5->_denyAll = [coderCopy decodeBoolForKey:@"DenyAll"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TemporaryAllowMulticastNetworkName"];
    temporaryAllowMulticastNetworkName = v5->_temporaryAllowMulticastNetworkName;
    v5->_temporaryAllowMulticastNetworkName = v14;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    matchSigningIdentifier = [equalCopy matchSigningIdentifier];
    matchSigningIdentifier2 = [(NEAppRule *)self matchSigningIdentifier];
    if ([matchSigningIdentifier isEqualToString:matchSigningIdentifier2])
    {
      matchPath = [equalCopy matchPath];
      matchPath2 = [(NEAppRule *)self matchPath];
      if ([matchPath isEqualToString:matchPath2])
      {
        temporaryAllowMulticastNetworkName = [equalCopy temporaryAllowMulticastNetworkName];
        temporaryAllowMulticastNetworkName2 = [(NEPathRule *)self temporaryAllowMulticastNetworkName];
        if ([temporaryAllowMulticastNetworkName isEqualToString:temporaryAllowMulticastNetworkName2] && (v13 = objc_msgSend(equalCopy, "cellularBehavior"), v13 == -[NEPathRule cellularBehavior](self, "cellularBehavior")) && (v14 = objc_msgSend(equalCopy, "wifiBehavior"), v14 == -[NEPathRule wifiBehavior](self, "wifiBehavior")) && (v15 = objc_msgSend(equalCopy, "isIdentifierExternal"), v15 == -[NEPathRule isIdentifierExternal](self, "isIdentifierExternal")) && (v16 = objc_msgSend(equalCopy, "denyMulticast"), v16 == -[NEPathRule denyMulticast](self, "denyMulticast")) && (v17 = objc_msgSend(equalCopy, "multicastPreferenceSet"), v17 == -[NEPathRule multicastPreferenceSet](self, "multicastPreferenceSet")))
        {
          denyAll = [equalCopy denyAll];
          v6 = denyAll ^ [(NEPathRule *)self denyAll]^ 1;
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