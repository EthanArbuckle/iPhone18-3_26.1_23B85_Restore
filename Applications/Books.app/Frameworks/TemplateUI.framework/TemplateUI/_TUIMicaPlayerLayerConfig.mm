@interface _TUIMicaPlayerLayerConfig
- (BOOL)isEqualToConfig:(id)config;
- (NSString)description;
- (TUIFileResourceProviding)fileProvider;
- (_TUIMicaPlayerLayerConfig)initWithURL:(id)l gravity:(id)gravity textKey:(id)key textValue:(id)value shouldStartAtEnd:(BOOL)end triggerName:(id)name targetTriggerState:(unint64_t)state triggerDelay:(double)self0 contentScale:(double)self1 opacity:(double)self2 fontSpec:(id)self3 fileProvider:(id)self4;
- (void)configureLayer:(id)layer;
@end

@implementation _TUIMicaPlayerLayerConfig

- (_TUIMicaPlayerLayerConfig)initWithURL:(id)l gravity:(id)gravity textKey:(id)key textValue:(id)value shouldStartAtEnd:(BOOL)end triggerName:(id)name targetTriggerState:(unint64_t)state triggerDelay:(double)self0 contentScale:(double)self1 opacity:(double)self2 fontSpec:(id)self3 fileProvider:(id)self4
{
  lCopy = l;
  gravityCopy = gravity;
  obj = key;
  keyCopy = key;
  valueCopy = value;
  nameCopy = name;
  valueCopy2 = value;
  nameCopy2 = name;
  specCopy = spec;
  providerCopy = provider;
  v37.receiver = self;
  v37.super_class = _TUIMicaPlayerLayerConfig;
  v29 = [(_TUIMicaPlayerLayerConfig *)&v37 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_url, l);
    objc_storeStrong(&v30->_gravity, gravity);
    objc_storeStrong(&v30->_textKey, obj);
    objc_storeStrong(&v30->_textValue, valueCopy);
    v30->_shouldStartAtEnd = end;
    objc_storeStrong(&v30->_triggerName, nameCopy);
    v30->_targetTriggerState = state;
    v30->_triggerDelay = delay;
    v30->_contentScale = scale;
    v30->_opacity = opacity;
    objc_storeStrong(&v30->_fontSpec, spec);
    objc_storeWeak(&v30->_fileProvider, providerCopy);
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p url=%@>", v4, self, self->_url];

  return v5;
}

- (void)configureLayer:(id)layer
{
  contentScale = self->_contentScale;
  layerCopy = layer;
  [layerCopy setContentsScale:contentScale];
  [layerCopy setRasterizationScale:self->_contentScale];
  opacity = self->_opacity;
  *&opacity = opacity;
  [layerCopy setOpacity:opacity];
  url = self->_url;
  gravity = self->_gravity;
  textKey = self->_textKey;
  textValue = self->_textValue;
  shouldStartAtEnd = self->_shouldStartAtEnd;
  triggerName = self->_triggerName;
  targetTriggerState = self->_targetTriggerState;
  triggerDelay = self->_triggerDelay;
  fontSpec = self->_fontSpec;
  WeakRetained = objc_loadWeakRetained(&self->_fileProvider);
  [layerCopy configWithURL:url gravity:gravity textKey:textKey textValue:textValue shouldStartAtEnd:shouldStartAtEnd triggerName:triggerName targetTriggerState:triggerDelay triggerDelay:targetTriggerState fontSpec:fontSpec fileProvider:WeakRetained];
}

- (BOOL)isEqualToConfig:(id)config
{
  configCopy = config;
  v7 = objc_opt_class();
  v8 = TUIDynamicCast(v7, configCopy);

  if (v8)
  {
    url = self->_url;
    v10 = [v8 url];
    if (url != v10)
    {
      v11 = self->_url;
      v3 = [v8 url];
      if (![(NSURL *)v11 isEqual:v3])
      {
        v12 = 0;
        goto LABEL_36;
      }
    }

    gravity = self->_gravity;
    gravity = [v8 gravity];
    if (gravity != gravity)
    {
      v15 = self->_gravity;
      gravity2 = [v8 gravity];
      if (![(NSString *)v15 isEqualToString:gravity2])
      {
        v12 = 0;
LABEL_34:

LABEL_35:
        if (url == v10)
        {
LABEL_37:

          goto LABEL_38;
        }

LABEL_36:

        goto LABEL_37;
      }
    }

    textKey = self->_textKey;
    textKey = [v8 textKey];
    v43 = textKey;
    if (textKey != textKey)
    {
      v18 = self->_textKey;
      textKey2 = [v8 textKey];
      v20 = v18;
      v21 = textKey2;
      if (![(NSString *)v20 isEqualToString:textKey2])
      {
        v12 = 0;
LABEL_32:

LABEL_33:
        if (gravity == gravity)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v40 = v21;
    }

    v42 = gravity2;
    textValue = self->_textValue;
    textValue = [v8 textValue];
    v41 = textValue;
    if (textValue != textValue)
    {
      v24 = self->_textValue;
      textValue2 = [v8 textValue];
      if (![(NSString *)v24 isEqualToString:?])
      {
        v12 = 0;
        gravity2 = v42;
LABEL_30:

LABEL_31:
        v21 = v40;
        if (v43 == textKey)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    shouldStartAtEnd = self->_shouldStartAtEnd;
    if (shouldStartAtEnd != [v8 shouldStartAtEnd])
    {
      v12 = 0;
      goto LABEL_29;
    }

    triggerName = self->_triggerName;
    [v8 triggerName];
    v38 = v37 = triggerName;
    if (triggerName == v38 || (v27 = self->_triggerName, [v8 triggerName], v36 = objc_claimAutoreleasedReturnValue(), -[NSString isEqualToString:](v27, "isEqualToString:")))
    {
      targetTriggerState = self->_targetTriggerState;
      if (targetTriggerState == [v8 targetTriggerState] && (triggerDelay = self->_triggerDelay, objc_msgSend(v8, "triggerDelay"), triggerDelay == v31))
      {
        opacity = self->_opacity;
        [v8 opacity];
        v12 = opacity == v33;
        v34 = opacity == v33;
      }

      else
      {
        v12 = 0;
        v34 = 0;
      }

      v28 = v38;
      if (v37 == v38)
      {
        v12 = v34;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = 0;
      v28 = v38;
    }

LABEL_28:
LABEL_29:
    gravity2 = v42;
    if (v41 == textValue)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v12 = 0;
LABEL_38:

  return v12;
}

- (TUIFileResourceProviding)fileProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_fileProvider);

  return WeakRetained;
}

@end