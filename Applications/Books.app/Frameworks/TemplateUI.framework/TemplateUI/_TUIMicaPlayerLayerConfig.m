@interface _TUIMicaPlayerLayerConfig
- (BOOL)isEqualToConfig:(id)a3;
- (NSString)description;
- (TUIFileResourceProviding)fileProvider;
- (_TUIMicaPlayerLayerConfig)initWithURL:(id)a3 gravity:(id)a4 textKey:(id)a5 textValue:(id)a6 shouldStartAtEnd:(BOOL)a7 triggerName:(id)a8 targetTriggerState:(unint64_t)a9 triggerDelay:(double)a10 contentScale:(double)a11 opacity:(double)a12 fontSpec:(id)a13 fileProvider:(id)a14;
- (void)configureLayer:(id)a3;
@end

@implementation _TUIMicaPlayerLayerConfig

- (_TUIMicaPlayerLayerConfig)initWithURL:(id)a3 gravity:(id)a4 textKey:(id)a5 textValue:(id)a6 shouldStartAtEnd:(BOOL)a7 triggerName:(id)a8 targetTriggerState:(unint64_t)a9 triggerDelay:(double)a10 contentScale:(double)a11 opacity:(double)a12 fontSpec:(id)a13 fileProvider:(id)a14
{
  v23 = a3;
  v24 = a4;
  obj = a5;
  v25 = a5;
  v33 = a6;
  v35 = a8;
  v36 = a6;
  v26 = a8;
  v27 = a13;
  v28 = a14;
  v37.receiver = self;
  v37.super_class = _TUIMicaPlayerLayerConfig;
  v29 = [(_TUIMicaPlayerLayerConfig *)&v37 init];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_url, a3);
    objc_storeStrong(&v30->_gravity, a4);
    objc_storeStrong(&v30->_textKey, obj);
    objc_storeStrong(&v30->_textValue, v33);
    v30->_shouldStartAtEnd = a7;
    objc_storeStrong(&v30->_triggerName, v35);
    v30->_targetTriggerState = a9;
    v30->_triggerDelay = a10;
    v30->_contentScale = a11;
    v30->_opacity = a12;
    objc_storeStrong(&v30->_fontSpec, a13);
    objc_storeWeak(&v30->_fileProvider, v28);
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

- (void)configureLayer:(id)a3
{
  contentScale = self->_contentScale;
  v5 = a3;
  [v5 setContentsScale:contentScale];
  [v5 setRasterizationScale:self->_contentScale];
  opacity = self->_opacity;
  *&opacity = opacity;
  [v5 setOpacity:opacity];
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
  [v5 configWithURL:url gravity:gravity textKey:textKey textValue:textValue shouldStartAtEnd:shouldStartAtEnd triggerName:triggerName targetTriggerState:triggerDelay triggerDelay:targetTriggerState fontSpec:fontSpec fileProvider:WeakRetained];
}

- (BOOL)isEqualToConfig:(id)a3
{
  v6 = a3;
  v7 = objc_opt_class();
  v8 = TUIDynamicCast(v7, v6);

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
    v14 = [v8 gravity];
    if (gravity != v14)
    {
      v15 = self->_gravity;
      v4 = [v8 gravity];
      if (![(NSString *)v15 isEqualToString:v4])
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
    v17 = [v8 textKey];
    v43 = textKey;
    if (textKey != v17)
    {
      v18 = self->_textKey;
      v19 = [v8 textKey];
      v20 = v18;
      v21 = v19;
      if (![(NSString *)v20 isEqualToString:v19])
      {
        v12 = 0;
LABEL_32:

LABEL_33:
        if (gravity == v14)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v40 = v21;
    }

    v42 = v4;
    textValue = self->_textValue;
    v23 = [v8 textValue];
    v41 = textValue;
    if (textValue != v23)
    {
      v24 = self->_textValue;
      v39 = [v8 textValue];
      if (![(NSString *)v24 isEqualToString:?])
      {
        v12 = 0;
        v4 = v42;
LABEL_30:

LABEL_31:
        v21 = v40;
        if (v43 == v17)
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
    v4 = v42;
    if (v41 == v23)
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