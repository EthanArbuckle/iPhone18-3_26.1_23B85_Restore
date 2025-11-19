@interface TUIButtonBox
+ (id)_metricsForButtonType:(unint64_t)a3;
+ (unint64_t)buttonRoleFromString:(id)a3;
+ (unint64_t)buttonTypeFromString:(id)a3;
- (void)setStateMap:(id)a3;
@end

@implementation TUIButtonBox

- (void)setStateMap:(id)a3
{
  v4 = a3;
  v19 = self;
  v24.receiver = self;
  v24.super_class = TUIButtonBox;
  [(TUIStatefulElementBox *)&v24 setStateMap:v4];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
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
        v14 = [v13 submodel];
        v15 = TUIDynamicCast(v12, v14);

        v16 = [v15 attributes];
        if (v16)
        {
          [v5 setObject:v16 forKeyedSubscript:v11];
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

  objc_storeStrong(&v19->_stateButtonAttributesMap, v18);
  if (v17)
  {
  }
}

+ (unint64_t)buttonTypeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E65C8 != -1)
  {
    sub_19BCC0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E65C0 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)buttonRoleFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E65D8 != -1)
  {
    sub_19BCD4();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E65D0 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (id)_metricsForButtonType:(unint64_t)a3
{
  if (qword_2E65E8 != -1)
  {
    sub_19BCE8();
  }

  v4 = qword_2E65E0;
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

@end