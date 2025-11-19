@interface DynamicTypeWizard
+ (id)_singletonInstance;
+ (id)autoscaledConstraint:(id)a3 constant:(double)a4 withFontProvider:(id)a5;
+ (void)autorefreshLabel:(id)a3 withFontProvider:(id)a4;
+ (void)autoscaleStackView:(id)a3 spacing:(double)a4 withFontProvider:(id)a5;
+ (void)makeObject:(id)a3 performSelector:(SEL)a4 whenSizeCategoryChangesWithOrder:(unint64_t)a5;
+ (void)stopAutoscalingStackView:(id)a3;
+ (void)unregisterObject:(id)a3;
+ (void)updateUnscaledConstantValue:(double)a3 fontProvider:(id)a4 forConstraint:(id)a5;
- (DynamicTypeWizard)init;
- (void)_contentSizeCategoryDidChange;
@end

@implementation DynamicTypeWizard

- (void)_contentSizeCategoryDidChange
{
  objectToSelectorStringMaps = self->_objectToSelectorStringMaps;
  v4 = [NSNumber numberWithUnsignedInteger:0];
  v5 = [(NSDictionary *)objectToSelectorStringMaps objectForKeyedSubscript:v4];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = self->_labelToFontMap;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_labelToFontMap objectForKey:v11];
        v13 = v12;
        if (v12)
        {
          v14 = (*(v12 + 16))(v12);
          [v11 setFont:v14];
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v8);
  }

  sub_100F3A7B4(v5);
  v15 = self->_objectToSelectorStringMaps;
  v16 = [NSNumber numberWithUnsignedInteger:1];
  v17 = [(NSDictionary *)v15 objectForKeyedSubscript:v16];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = self->_constraintToValueMap;
  v19 = [(NSMapTable *)v18 countByEnumeratingWithState:&v39 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v40;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v40 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v39 + 1) + 8 * j);
        v24 = [(NSMapTable *)self->_constraintToValueMap objectForKey:v23];
        sub_100F3A928(v23, v24);
      }

      v20 = [(NSMapTable *)v18 countByEnumeratingWithState:&v39 objects:v48 count:16];
    }

    while (v20);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v25 = self->_stackToValueMap;
  v26 = [(NSMapTable *)v25 countByEnumeratingWithState:&v35 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v35 + 1) + 8 * k);
        v31 = [(NSMapTable *)self->_stackToValueMap objectForKey:v30, v35];
        [v31 scaledValue];
        UIRoundToViewScale();
        [v30 setSpacing:?];
      }

      v27 = [(NSMapTable *)v25 countByEnumeratingWithState:&v35 objects:v47 count:16];
    }

    while (v27);
  }

  sub_100F3A7B4(v17);
  v32 = self->_objectToSelectorStringMaps;
  v33 = [NSNumber numberWithUnsignedInteger:2];
  v34 = [(NSDictionary *)v32 objectForKeyedSubscript:v33];

  sub_100F3A7B4(v34);
}

- (DynamicTypeWizard)init
{
  v25.receiver = self;
  v25.super_class = DynamicTypeWizard;
  v2 = [(DynamicTypeWizard *)&v25 init];
  if (v2)
  {
    v3 = +[NSMapTable weakToStrongObjectsMapTable];
    labelToFontMap = v2->_labelToFontMap;
    v2->_labelToFontMap = v3;

    v5 = +[NSMapTable weakToStrongObjectsMapTable];
    constraintToValueMap = v2->_constraintToValueMap;
    v2->_constraintToValueMap = v5;

    v7 = +[NSMapTable weakToStrongObjectsMapTable];
    stackToValueMap = v2->_stackToValueMap;
    v2->_stackToValueMap = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [&off_1016EDB80 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(&off_1016EDB80);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = +[NSMapTable weakToStrongObjectsMapTable];
          [v9 setObject:v15 forKeyedSubscript:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [&off_1016EDB80 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    v16 = [NSDictionary dictionaryWithDictionary:v9];
    objectToSelectorStringMaps = v2->_objectToSelectorStringMaps;
    v2->_objectToSelectorStringMaps = v16;

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"_contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

    v19 = v2;
  }

  return v2;
}

+ (id)_singletonInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F3ACD0;
  block[3] = &unk_1016611D0;
  block[4] = a1;
  if (qword_10195F760 != -1)
  {
    dispatch_once(&qword_10195F760, block);
  }

  v2 = qword_10195F758;

  return v2;
}

+ (void)unregisterObject:(id)a3
{
  v4 = a3;
  v5 = [a1 _singletonInstance];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [&off_1016EDB68 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(&off_1016EDB68);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [v5 objectToSelectorStringMaps];
        v12 = [v11 objectForKeyedSubscript:v10];
        [v12 removeObjectForKey:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [&off_1016EDB68 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

+ (void)makeObject:(id)a3 performSelector:(SEL)a4 whenSizeCategoryChangesWithOrder:(unint64_t)a5
{
  v13 = a3;
  v8 = [a1 _singletonInstance];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 objectToSelectorStringMaps];
    v10 = [NSNumber numberWithUnsignedInteger:a5];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = NSStringFromSelector(a4);
    [v11 setObject:v12 forKey:v13];
  }
}

+ (void)stopAutoscalingStackView:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [a1 _singletonInstance];
    v5 = [v6 stackToValueMap];
    [v5 removeObjectForKey:v4];
  }
}

+ (void)autoscaleStackView:(id)a3 spacing:(double)a4 withFontProvider:(id)a5
{
  if (a5)
  {
    v8 = a5;
    v9 = a3;
    v12 = objc_alloc_init(DynamicTypeValue);
    [(DynamicTypeValue *)v12 setUnscaledValue:a4];
    [(DynamicTypeValue *)v12 setFontProvider:v8];

    [(DynamicTypeValue *)v12 scaledValue];
    UIRoundToViewScale();
    [v9 setSpacing:?];
    v10 = [a1 _singletonInstance];
    v11 = [v10 stackToValueMap];
    [v11 setObject:v12 forKey:v9];
  }
}

+ (void)updateUnscaledConstantValue:(double)a3 fontProvider:(id)a4 forConstraint:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = [a1 _singletonInstance];
  v10 = [v9 constraintToValueMap];
  v11 = [v10 objectForKey:v8];

  if (v11)
  {
    [v11 setUnscaledValue:a3];
    [v11 setFontProvider:v12];
    sub_100F3A928(v8, v11);
  }
}

+ (id)autoscaledConstraint:(id)a3 constant:(double)a4 withFontProvider:(id)a5
{
  v8 = a3;
  if (a5)
  {
    v9 = a5;
    v10 = objc_alloc_init(DynamicTypeValue);
    [(DynamicTypeValue *)v10 setUnscaledValue:a4];
    [(DynamicTypeValue *)v10 setFontProvider:v9];

    sub_100F3A928(v8, v10);
    v11 = [a1 _singletonInstance];
    v12 = [v11 constraintToValueMap];
    [v12 setObject:v10 forKey:v8];
  }

  return v8;
}

+ (void)autorefreshLabel:(id)a3 withFontProvider:(id)a4
{
  if (a4)
  {
    v6 = *(a4 + 2);
    v7 = a4;
    v8 = a3;
    v9 = v6(v7);
    [v8 setFont:v9];

    v12 = [a1 _singletonInstance];
    v10 = [v12 labelToFontMap];
    v11 = objc_retainBlock(v7);

    [v10 setObject:v11 forKey:v8];
  }
}

@end