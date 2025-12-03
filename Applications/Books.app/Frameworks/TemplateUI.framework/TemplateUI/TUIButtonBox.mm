@interface TUIButtonBox
+ (id)_metricsForButtonType:(unint64_t)type;
+ (unint64_t)buttonRoleFromString:(id)string;
+ (unint64_t)buttonTypeFromString:(id)string;
- (void)setStateMap:(id)map;
@end

@implementation TUIButtonBox

- (void)setStateMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  v24.receiver = self;
  v24.super_class = TUIButtonBox;
  [(TUIStatefulElementBox *)&v24 setStateMap:mapCopy];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [mapCopy count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = mapCopy;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = [v6 objectForKeyedSubscript:v11];
        submodel = [v13 submodel];
        v15 = TUIDynamicCast(v12, submodel);

        attributes = [v15 attributes];
        if (attributes)
        {
          [v5 setObject:attributes forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v17 = [v5 count];
  if (v17)
  {
    v18 = [v5 copy];
  }

  else
  {
    v18 = 0;
  }

  objc_storeStrong(&selfCopy->_stateButtonAttributesMap, v18);
  if (v17)
  {
  }
}

+ (unint64_t)buttonTypeFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E65C8 != -1)
  {
    sub_19BCC0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    unsignedIntegerValue = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E65C0 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

+ (unint64_t)buttonRoleFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E65D8 != -1)
  {
    sub_19BCD4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    unsignedIntegerValue = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E65D0 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

+ (id)_metricsForButtonType:(unint64_t)type
{
  if (qword_2E65E8 != -1)
  {
    sub_19BCE8();
  }

  v4 = qword_2E65E0;
  v5 = [NSNumber numberWithUnsignedInteger:type];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

@end