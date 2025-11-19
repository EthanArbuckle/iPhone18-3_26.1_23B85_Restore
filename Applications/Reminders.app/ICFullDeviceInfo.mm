@interface ICFullDeviceInfo
- (BOOL)isHardwareInfoUpgradable:(ICDeviceHardwareInfo *)a3;
- (BOOL)isHardwareInfoUpgradableTo2019OSes:(ICDeviceHardwareInfo *)a3;
- (BOOL)isHardwareInfoUpgradableToSydneyRomeKincaid:(ICDeviceHardwareInfo *)a3;
- (BOOL)shouldBeHidden;
- (BOOL)upgraded;
- (BOOL)upgradedTo2019OSes;
- (BOOL)upgradedToMajor:(int)a3 minor:(int)a4;
- (BOOL)upgradedToSydneyRomeKincaid;
- (ICDeviceHardwareInfo)hardwareInfoFromModelId:(SEL)a3;
- (ICFullDeviceInfo)initWithName:(id)a3 model:(id)a4 modelDisplayName:(id)a5 softwareVersion:(id)a6;
- (id)debugDescription;
- (id)description;
- (unint64_t)hardwareInfoNameFromString:(id)a3;
@end

@implementation ICFullDeviceInfo

- (ICFullDeviceInfo)initWithName:(id)a3 model:(id)a4 modelDisplayName:(id)a5 softwareVersion:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = ICFullDeviceInfo;
  v14 = [(ICMigrationDeviceInfo *)&v19 initWithName:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_model, a4);
    objc_storeStrong(&v15->_modelDisplayName, a5);
    objc_storeStrong(&v15->_softwareVersion, a6);
    [(ICFullDeviceInfo *)v15 hardwareInfoFromModelId:v11];
    v15->_hardwareInfo.subVersion = v18;
    *&v15->_hardwareInfo.modelName = v17;
  }

  return v15;
}

- (id)debugDescription
{
  v12.receiver = self;
  v12.super_class = ICFullDeviceInfo;
  v3 = [(ICFullDeviceInfo *)&v12 description];
  v4 = [(ICMigrationDeviceInfo *)self name];
  v5 = [(ICFullDeviceInfo *)self model];
  v6 = [(ICFullDeviceInfo *)self modelDisplayName];
  v7 = [(ICFullDeviceInfo *)self softwareVersion];
  if ([(ICFullDeviceInfo *)self upgradable])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(ICFullDeviceInfo *)self upgraded])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [NSString stringWithFormat:@"%@ <name: %@, model: %@, modelDisplayName: %@, OS: %@, Upgradable: %@, Upgraded: %@", v3, v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = ICFullDeviceInfo;
  v3 = [(ICFullDeviceInfo *)&v11 description];
  v4 = [(ICFullDeviceInfo *)self model];
  v5 = [(ICFullDeviceInfo *)self modelDisplayName];
  v6 = [(ICFullDeviceInfo *)self softwareVersion];
  if ([(ICFullDeviceInfo *)self upgradable])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(ICFullDeviceInfo *)self upgraded])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [NSString stringWithFormat:@"%@ <model: %@, modelDisplayName: %@, OS: %@, Upgradable: %@, Upgraded: %@", v3, v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isHardwareInfoUpgradable:(ICDeviceHardwareInfo *)a3
{
  modelName = a3->modelName;
  result = 1;
  if (a3->modelName <= 6)
  {
    if (modelName > 3)
    {
      if (modelName != 4 && modelName != 5)
      {
        if (modelName != 6)
        {
          return result;
        }

        goto LABEL_11;
      }

      goto LABEL_17;
    }

    if (modelName != 1)
    {
      if (modelName != 3)
      {
        return result;
      }

      goto LABEL_17;
    }

    version = a3->version;
    v8 = __OFSUB__(version, 6);
    v6 = version == 6;
    v7 = version - 6 < 0;
  }

  else
  {
    if (modelName <= 9)
    {
      if (modelName != 7)
      {
        if (modelName != 8)
        {
          if (modelName != 9)
          {
            return result;
          }

LABEL_11:
          v5 = a3->version;
          v8 = __OFSUB__(v5, 4);
          v6 = v5 == 4;
          v7 = v5 - 4 < 0;
          return !(v7 ^ v8 | v6);
        }

        goto LABEL_18;
      }

LABEL_17:
      v9 = a3->version;
      v8 = __OFSUB__(v9, 2);
      v6 = v9 == 2;
      v7 = v9 - 2 < 0;
      return !(v7 ^ v8 | v6);
    }

    if (modelName != 10)
    {
      if (modelName != 11)
      {
        return modelName != 12;
      }

LABEL_18:
      v10 = a3->version;
      v8 = __OFSUB__(v10, 1);
      v6 = v10 == 1;
      v7 = v10 - 1 < 0;
      return !(v7 ^ v8 | v6);
    }

    v12 = a3->version;
    v8 = __OFSUB__(v12, 3);
    v6 = v12 == 3;
    v7 = v12 - 3 < 0;
  }

  return !(v7 ^ v8 | v6);
}

- (BOOL)isHardwareInfoUpgradableTo2019OSes:(ICDeviceHardwareInfo *)a3
{
  modelName = a3->modelName;
  result = 1;
  if (a3->modelName <= 6)
  {
    if (modelName <= 3)
    {
      switch(modelName)
      {
        case 1:
          v5 = a3->version <= 12;
          break;
        case 2:
          v5 = a3->version <= 0;
          break;
        case 3:
          goto LABEL_20;
        default:
          return result;
      }

      return !v5;
    }

    if (modelName == 4)
    {
LABEL_20:
      v5 = a3->version <= 5;
      return !v5;
    }

    if (modelName == 5)
    {
      return 0;
    }

    if (modelName != 6)
    {
      return result;
    }

LABEL_19:
    v5 = a3->version <= 7;
    return !v5;
  }

  if (modelName <= 9)
  {
    if (modelName == 7)
    {
      v5 = a3->version <= 8;
      return !v5;
    }

    if (modelName == 8)
    {
      v5 = a3->version <= 4;
      return !v5;
    }

    if (modelName != 9)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (modelName == 10)
  {
    goto LABEL_19;
  }

  if (modelName != 11)
  {
    return modelName != 12;
  }

  version = a3->version;
  if (version != 5 && (version != 6 || a3->subVersion <= 2))
  {
    v5 = version <= 6;
    return !v5;
  }

  return result;
}

- (BOOL)isHardwareInfoUpgradableToSydneyRomeKincaid:(ICDeviceHardwareInfo *)a3
{
  modelName = a3->modelName;
  result = 1;
  if (a3->modelName <= 6)
  {
    if (modelName <= 3)
    {
      switch(modelName)
      {
        case 1:
          v6 = a3->version <= 17;
          break;
        case 2:
          v6 = a3->version <= 0;
          break;
        case 3:
          goto LABEL_22;
        default:
          return result;
      }

      return !v6;
    }

    if (modelName == 4)
    {
      v6 = a3->version <= 6;
      return !v6;
    }

    if (modelName != 5)
    {
      if (modelName != 6)
      {
        return result;
      }

      goto LABEL_21;
    }

    return 0;
  }

  if (modelName > 9)
  {
    if (modelName == 10)
    {
LABEL_21:
      v6 = a3->version <= 9;
      return !v6;
    }

    if (modelName == 11)
    {
      version = a3->version;
      if (version >= 6)
      {
        if (version > 0xE)
        {
          return result;
        }

        if (version <= 8)
        {
          if (version == 6)
          {
            v6 = a3->subVersion <= 2;
          }

          else
          {
            if (version != 7)
            {
              return result;
            }

            v6 = a3->subVersion <= 4;
          }

          return !v6;
        }

        if ((version - 11) < 4)
        {
          return result;
        }
      }

      return 0;
    }

    v5 = modelName == 12;
  }

  else
  {
    if (modelName == 7)
    {
      v6 = a3->version <= 13;
      return !v6;
    }

    if (modelName == 8)
    {
LABEL_22:
      v6 = a3->version <= 7;
      return !v6;
    }

    v5 = modelName == 9;
  }

  return !v5;
}

- (BOOL)upgradedToMajor:(int)a3 minor:(int)a4
{
  v7 = [(ICFullDeviceInfo *)self softwareVersion];

  if (!v7)
  {
    return 0;
  }

  v8 = [NSScanner alloc];
  v9 = [(ICFullDeviceInfo *)self softwareVersion];
  v10 = [v8 initWithString:v9];

  v11 = +[NSCharacterSet decimalDigitCharacterSet];
  v12 = [v11 invertedSet];
  [v10 setCharactersToBeSkipped:v12];

  v16 = 0;
  if (![v10 scanInt:&v16 + 4] || !objc_msgSend(v10, "scanInt:", &v16))
  {
    v14 = +[REMLogStore utility];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10060FD48(self, v14);
    }

    goto LABEL_11;
  }

  if (SHIDWORD(v16) <= a3 && (HIDWORD(v16) != a3 || v16 < a4))
  {
LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)upgradedTo2019OSes
{
  v3 = [(ICFullDeviceInfo *)self softwareVersion];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICFullDeviceInfo *)self softwareVersion];
  v5 = [v4 hasPrefix:@"OSX"];

  if (v5)
  {
    v6 = 10;
  }

  else
  {
    v6 = 13;
  }

  if (v5)
  {
    v7 = 15;
  }

  else
  {
    v7 = 0;
  }

  return [(ICFullDeviceInfo *)self upgradedToMajor:v6 minor:v7];
}

- (BOOL)upgradedToSydneyRomeKincaid
{
  v3 = [(ICFullDeviceInfo *)self softwareVersion];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICFullDeviceInfo *)self softwareVersion];
  v5 = [v4 hasPrefix:@"OSX"];

  if (v5)
  {
    v6 = 13;
  }

  else
  {
    v6 = 16;
  }

  return [(ICFullDeviceInfo *)self upgradedToMajor:v6 minor:0];
}

- (BOOL)upgraded
{
  v3 = [(ICFullDeviceInfo *)self softwareVersion];

  if (!v3)
  {
    return 0;
  }

  v4 = [(ICFullDeviceInfo *)self softwareVersion];
  v5 = [v4 hasPrefix:@"OSX"];

  if (v5)
  {
    v6 = 10;
  }

  else
  {
    v6 = 9;
  }

  if (v5)
  {
    v7 = 11;
  }

  else
  {
    v7 = 0;
  }

  return [(ICFullDeviceInfo *)self upgradedToMajor:v6 minor:v7];
}

- (ICDeviceHardwareInfo)hardwareInfoFromModelId:(SEL)a3
{
  result = a4;
  retstr->version = 0;
  retstr->subVersion = 0;
  retstr->modelName = 0;
  if (result)
  {
    v7 = result;
    v8 = [(ICDeviceHardwareInfo *)result lowercaseString];

    v24 = 0;
    v9 = [NSRegularExpression regularExpressionWithPattern:@"([a-z]+)([0-9]+) options:([0-9]+)" error:1, &v24];
    v10 = [v9 firstMatchInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
    v11 = v10;
    if (v10 && [v10 numberOfRanges] == 4)
    {
      v12 = [v11 rangeAtIndex:1];
      v14 = [v8 substringWithRange:{v12, v13}];
      v15 = [(ICFullDeviceInfo *)self hardwareInfoNameFromString:v14];
      retstr->modelName = v15;
      if (v15)
      {
        v16 = [v11 rangeAtIndex:2];
        v18 = [v8 substringWithRange:{v16, v17}];
        v19 = [v18 integerValue];

        v20 = [v11 rangeAtIndex:3];
        v22 = [v8 substringWithRange:{v20, v21}];
        v23 = [v22 integerValue];

        retstr->version = v19;
        retstr->subVersion = v23;
      }
    }
  }

  return result;
}

- (unint64_t)hardwareInfoNameFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"imac"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"imacpro"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"macmini"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"macpro"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"xserve"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"macbook"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"macbookair"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"macbookpro"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ipod"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"iphone"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ipad"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"appletv"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"audioaccessory"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldBeHidden
{
  v3 = [(ICFullDeviceInfo *)self softwareVersion];
  if ([v3 hasPrefix:@"OSX"])
  {
    v4 = 0;
  }

  else if ([v3 hasPrefix:@"iOS"] && (-[ICFullDeviceInfo hardwareInfo](self, "hardwareInfo"), v7 != 12))
  {
    [(ICFullDeviceInfo *)self hardwareInfo];
    v4 = v6 == 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end