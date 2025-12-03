@interface DynamicTypeWizard
+ (id)_singletonInstance;
+ (id)autoscaledConstraint:(id)constraint constant:(double)constant withFontProvider:(id)provider;
+ (void)autorefreshLabel:(id)label withFontProvider:(id)provider;
+ (void)autoscaleStackView:(id)view spacing:(double)spacing withFontProvider:(id)provider;
+ (void)makeObject:(id)object performSelector:(SEL)selector whenSizeCategoryChangesWithOrder:(unint64_t)order;
+ (void)stopAutoscalingStackView:(id)view;
+ (void)unregisterObject:(id)object;
+ (void)updateUnscaledConstantValue:(double)value fontProvider:(id)provider forConstraint:(id)constraint;
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
  block[4] = self;
  if (qword_10195F760 != -1)
  {
    dispatch_once(&qword_10195F760, block);
  }

  v2 = qword_10195F758;

  return v2;
}

+ (void)unregisterObject:(id)object
{
  objectCopy = object;
  _singletonInstance = [self _singletonInstance];
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
        objectToSelectorStringMaps = [_singletonInstance objectToSelectorStringMaps];
        v12 = [objectToSelectorStringMaps objectForKeyedSubscript:v10];
        [v12 removeObjectForKey:objectCopy];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [&off_1016EDB68 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

+ (void)makeObject:(id)object performSelector:(SEL)selector whenSizeCategoryChangesWithOrder:(unint64_t)order
{
  objectCopy = object;
  _singletonInstance = [self _singletonInstance];
  if (objc_opt_respondsToSelector())
  {
    objectToSelectorStringMaps = [_singletonInstance objectToSelectorStringMaps];
    v10 = [NSNumber numberWithUnsignedInteger:order];
    v11 = [objectToSelectorStringMaps objectForKeyedSubscript:v10];
    v12 = NSStringFromSelector(selector);
    [v11 setObject:v12 forKey:objectCopy];
  }
}

+ (void)stopAutoscalingStackView:(id)view
{
  if (view)
  {
    viewCopy = view;
    _singletonInstance = [self _singletonInstance];
    stackToValueMap = [_singletonInstance stackToValueMap];
    [stackToValueMap removeObjectForKey:viewCopy];
  }
}

+ (void)autoscaleStackView:(id)view spacing:(double)spacing withFontProvider:(id)provider
{
  if (provider)
  {
    providerCopy = provider;
    viewCopy = view;
    v12 = objc_alloc_init(DynamicTypeValue);
    [(DynamicTypeValue *)v12 setUnscaledValue:spacing];
    [(DynamicTypeValue *)v12 setFontProvider:providerCopy];

    [(DynamicTypeValue *)v12 scaledValue];
    UIRoundToViewScale();
    [viewCopy setSpacing:?];
    _singletonInstance = [self _singletonInstance];
    stackToValueMap = [_singletonInstance stackToValueMap];
    [stackToValueMap setObject:v12 forKey:viewCopy];
  }
}

+ (void)updateUnscaledConstantValue:(double)value fontProvider:(id)provider forConstraint:(id)constraint
{
  providerCopy = provider;
  constraintCopy = constraint;
  _singletonInstance = [self _singletonInstance];
  constraintToValueMap = [_singletonInstance constraintToValueMap];
  v11 = [constraintToValueMap objectForKey:constraintCopy];

  if (v11)
  {
    [v11 setUnscaledValue:value];
    [v11 setFontProvider:providerCopy];
    sub_100F3A928(constraintCopy, v11);
  }
}

+ (id)autoscaledConstraint:(id)constraint constant:(double)constant withFontProvider:(id)provider
{
  constraintCopy = constraint;
  if (provider)
  {
    providerCopy = provider;
    v10 = objc_alloc_init(DynamicTypeValue);
    [(DynamicTypeValue *)v10 setUnscaledValue:constant];
    [(DynamicTypeValue *)v10 setFontProvider:providerCopy];

    sub_100F3A928(constraintCopy, v10);
    _singletonInstance = [self _singletonInstance];
    constraintToValueMap = [_singletonInstance constraintToValueMap];
    [constraintToValueMap setObject:v10 forKey:constraintCopy];
  }

  return constraintCopy;
}

+ (void)autorefreshLabel:(id)label withFontProvider:(id)provider
{
  if (provider)
  {
    v6 = *(provider + 2);
    providerCopy = provider;
    labelCopy = label;
    v9 = v6(providerCopy);
    [labelCopy setFont:v9];

    _singletonInstance = [self _singletonInstance];
    labelToFontMap = [_singletonInstance labelToFontMap];
    v11 = objc_retainBlock(providerCopy);

    [labelToFontMap setObject:v11 forKey:labelCopy];
  }
}

@end