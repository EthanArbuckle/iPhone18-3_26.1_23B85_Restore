@interface _TUIMicaPlayerLayer
- (void)configWithURL:(id)l gravity:(id)gravity textKey:(id)key textValue:(id)value shouldStartAtEnd:(BOOL)end triggerName:(id)name targetTriggerState:(unint64_t)state triggerDelay:(double)self0 fontSpec:(id)self1 fileProvider:(id)self2;
- (void)didAddLayerWithFeedControllerHost:(id)host;
- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event;
- (void)updateContent;
- (void)willRemoveLayerWithFeedControllerHost:(id)host;
@end

@implementation _TUIMicaPlayerLayer

- (void)configWithURL:(id)l gravity:(id)gravity textKey:(id)key textValue:(id)value shouldStartAtEnd:(BOOL)end triggerName:(id)name targetTriggerState:(unint64_t)state triggerDelay:(double)self0 fontSpec:(id)self1 fileProvider:(id)self2
{
  endCopy = end;
  lCopy = l;
  gravityCopy = gravity;
  keyCopy = key;
  valueCopy = value;
  nameCopy = name;
  specCopy = spec;
  providerCopy = provider;
  objc_storeStrong(&self->_triggerName, name);
  self->_targetTriggerState = state;
  self->_triggerDelay = delay;
  objc_storeStrong(&self->_gravity, gravity);
  player = self->_player;
  v49 = lCopy;
  if (player)
  {
    path = [(TUIMicaPlayer *)player path];
    path2 = [lCopy path];
    v26 = [path isEqualToString:path2];

    v27 = gravityCopy;
    if (v26)
    {
      goto LABEL_6;
    }

    player = self->_player;
    lCopy = v49;
  }

  else
  {
    v27 = gravityCopy;
  }

  [(TUIMicaPlayer *)player removeFromSuperlayer];
  v28 = [TUIMicaPlayer alloc];
  path3 = [lCopy path];
  v30 = [(TUIMicaPlayer *)v28 initWithPath:path3 retinaScale:providerCopy fileProvider:1.0];
  v31 = self->_player;
  self->_player = v30;

LABEL_6:
  [(TUIMicaPlayer *)self->_player addToLayer:self onTop:0 gravity:v27];
  v32 = +[TUIFontSpec defaultFontSpec];
  v33 = [specCopy isEqual:v32];

  if (keyCopy)
  {
    v34 = valueCopy == 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = v34;
  if (!v34 && (v33 & 1) == 0)
  {
    font = [specCopy font];
    v37 = [(TUIMicaPlayer *)self->_player publishedLayerWithKey:keyCopy required:1];
    v38 = objc_opt_class();
    v39 = TUIDynamicCast(v38, v37);
    [(_TUIMicaPlayerLayer *)self contentsScale];
    [v39 setContentsScale:?];
    [(_TUIMicaPlayerLayer *)self rasterizationScale];
    [v39 setRasterizationScale:?];
    [v39 setString:valueCopy];
    [v39 setFont:font];
    [specCopy pointSize];
    [v39 setFontSize:?];
    v51 = NSFontAttributeName;
    v52 = font;
    v40 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    [valueCopy sizeWithAttributes:v40];
    [v39 setBounds:{0.0, 0.0, v41, v42}];

    v27 = gravityCopy;
LABEL_15:

    goto LABEL_17;
  }

  if ((v35 & 1) == 0)
  {
    font = [(TUIMicaPlayer *)self->_player publishedLayerWithKey:keyCopy required:1];
    v45 = objc_opt_class();
    v37 = TUIDynamicCast(v45, font);
    [(_TUIMicaPlayerLayer *)self contentsScale];
    [v37 setContentsScale:?];
    [(_TUIMicaPlayerLayer *)self rasterizationScale];
    [v37 setRasterizationScale:?];
    [v37 setString:valueCopy];
    v46 = objc_opt_class();
    v39 = TUIDynamicCast(v46, [v37 font]);
    if ([v39 isEqualToString:@"Serif UI Display Bold"])
    {
      [v37 fontSize];
      [v37 setFont:{+[UIFont systemFontOfSize:weight:design:](UIFont, "systemFontOfSize:weight:design:", kCTFontUIFontDesignSerif)}];
    }

    goto LABEL_15;
  }

LABEL_17:
  v43 = self->_player;
  if (endCopy)
  {
    [(TUIMicaPlayer *)v43 documentDuration];
    v43 = self->_player;
  }

  else
  {
    v44 = 0.0;
  }

  [(TUIMicaPlayer *)v43 setPlaybackTime:v44];
}

- (void)updateContent
{
  player = self->_player;
  if (player)
  {
    [(TUIMicaPlayer *)player removeFromSuperlayer];
    [(TUIMicaPlayer *)self->_player addToLayer:self onTop:0 gravity:self->_gravity];
    [(TUIMicaPlayer *)self->_player documentDuration];
    [(TUIMicaPlayer *)self->_player setPlaybackTime:?];
    v4 = self->_player;

    [(TUIMicaPlayer *)v4 play];
  }
}

- (void)didAddLayerWithFeedControllerHost:(id)host
{
  hostCopy = host;
  triggerName = [(_TUIMicaPlayerLayer *)self triggerName];
  v5 = [triggerName length];

  if (v5)
  {
    triggerStateManager = [hostCopy triggerStateManager];
    triggerName2 = [(_TUIMicaPlayerLayer *)self triggerName];
    [triggerStateManager addObserver:self forTrigger:triggerName2];

    triggerStateManager2 = [hostCopy triggerStateManager];
    triggerName3 = [(_TUIMicaPlayerLayer *)self triggerName];
    v10 = [triggerStateManager2 stateForTriggerWithName:triggerName3];

    triggerName4 = [(_TUIMicaPlayerLayer *)self triggerName];
    [(_TUIMicaPlayerLayer *)self handleTrigger:triggerName4 didChangeState:v10 updateEvent:2];
  }
}

- (void)willRemoveLayerWithFeedControllerHost:(id)host
{
  hostCopy = host;
  triggerName = [(_TUIMicaPlayerLayer *)self triggerName];
  v5 = [triggerName length];

  if (v5)
  {
    triggerStateManager = [hostCopy triggerStateManager];
    triggerName2 = [(_TUIMicaPlayerLayer *)self triggerName];
    [triggerStateManager removeObserver:self forTrigger:triggerName2];
  }
}

- (void)handleTrigger:(id)trigger didChangeState:(unint64_t)state updateEvent:(unint64_t)event
{
  triggerCopy = trigger;
  targetTriggerState = [(_TUIMicaPlayerLayer *)self targetTriggerState];
  if (state)
  {
    if (targetTriggerState == state)
    {
      triggerName = [(_TUIMicaPlayerLayer *)self triggerName];
      v10 = [triggerName isEqualToString:triggerCopy];

      if (v10)
      {
        [(_TUIMicaPlayerLayer *)self triggerDelay];
        if (v11 <= 0.0)
        {
          [(TUIMicaPlayer *)self->_player play];
        }

        else
        {
          [(_TUIMicaPlayerLayer *)self triggerDelay];
          v13 = dispatch_time(0, (v12 * 1000000000.0));
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_99D24;
          block[3] = &unk_25DE30;
          block[4] = self;
          dispatch_after(v13, &_dispatch_main_q, block);
        }
      }
    }
  }
}

@end