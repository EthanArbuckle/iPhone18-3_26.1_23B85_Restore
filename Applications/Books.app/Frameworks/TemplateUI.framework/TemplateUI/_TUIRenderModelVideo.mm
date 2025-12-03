@interface _TUIRenderModelVideo
- (BOOL)isEqualToRenderModel:(id)model;
- (CGSize)size;
- (_TUIRenderModelVideo)initWithUrl:(id)url posterFrameResource:(id)resource videoId:(id)id loop:(BOOL)loop muted:(BOOL)muted allowFullScreen:(BOOL)screen autoPlay:(BOOL)play showPlaybackControls:(BOOL)self0 gravity:(id)self1 cornerRadius:(double)self2 topTriggerName:(id)self3 bottomTriggerName:(id)self4 leftTriggerName:(id)self5 rightTriggerName:(id)self6 actionHandler:(id)self7;
- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform;
@end

@implementation _TUIRenderModelVideo

- (_TUIRenderModelVideo)initWithUrl:(id)url posterFrameResource:(id)resource videoId:(id)id loop:(BOOL)loop muted:(BOOL)muted allowFullScreen:(BOOL)screen autoPlay:(BOOL)play showPlaybackControls:(BOOL)self0 gravity:(id)self1 cornerRadius:(double)self2 topTriggerName:(id)self3 bottomTriggerName:(id)self4 leftTriggerName:(id)self5 rightTriggerName:(id)self6 actionHandler:(id)self7
{
  urlCopy = url;
  obj = resource;
  resourceCopy = resource;
  idCopy = id;
  idCopy2 = id;
  gravityCopy = gravity;
  nameCopy = name;
  triggerNameCopy = triggerName;
  leftTriggerNameCopy = leftTriggerName;
  rightTriggerNameCopy = rightTriggerName;
  handlerCopy = handler;
  v39.receiver = self;
  v39.super_class = _TUIRenderModelVideo;
  v28 = [(_TUIRenderModelVideo *)&v39 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_url, url);
    objc_storeStrong(&v29->_posterFrameResource, obj);
    objc_storeStrong(&v29->_videoId, idCopy);
    v29->_loop = loop;
    v29->_muted = muted;
    v29->_allowFullScreen = screen;
    v29->_autoPlay = play;
    v29->_showPlaybackControls = controls;
    objc_storeStrong(&v29->_gravity, gravity);
    v29->_cornerRadius = radius;
    objc_storeStrong(&v29->_topTriggerName, name);
    objc_storeStrong(&v29->_bottomTriggerName, triggerName);
    objc_storeStrong(&v29->_leftTriggerName, leftTriggerName);
    objc_storeStrong(&v29->_rightTriggerName, rightTriggerName);
    objc_storeStrong(&v29->_actionHandler, handler);
  }

  return v29;
}

- (void)appendResourcesToCollector:(id)collector transform:(CGAffineTransform *)transform
{
  posterFrameResource = self->_posterFrameResource;
  collectorCopy = collector;
  resource = [(TUIImageResource *)posterFrameResource resource];
  [collectorCopy collectResource:resource];

  [collectorCopy collectImageResource:self->_posterFrameResource];
}

- (BOOL)isEqualToRenderModel:(id)model
{
  modelCopy = model;
  v5 = [(_TUIRenderModelVideo *)self url];
  v6 = [modelCopy url];
  if ([v5 isEqual:v6])
  {
    videoId = [(_TUIRenderModelVideo *)self videoId];
    videoId2 = [modelCopy videoId];
    if ([videoId isEqualToString:videoId2])
    {
      posterFrameResource = [(_TUIRenderModelVideo *)self posterFrameResource];
      posterFrameResource2 = [modelCopy posterFrameResource];
      if (posterFrameResource == posterFrameResource2 && (v11 = -[_TUIRenderModelVideo loop](self, "loop"), v11 == [modelCopy loop]) && (v12 = -[_TUIRenderModelVideo muted](self, "muted"), v12 == objc_msgSend(modelCopy, "muted")) && (v13 = -[_TUIRenderModelVideo allowFullScreen](self, "allowFullScreen"), v13 == objc_msgSend(modelCopy, "allowFullScreen")) && (v14 = -[_TUIRenderModelVideo autoPlay](self, "autoPlay"), v14 == objc_msgSend(modelCopy, "autoPlay")) && (v15 = -[_TUIRenderModelVideo showPlaybackControls](self, "showPlaybackControls"), v15 == objc_msgSend(modelCopy, "showPlaybackControls")))
      {
        gravity = [(_TUIRenderModelVideo *)self gravity];
        gravity2 = [modelCopy gravity];
        if (gravity == gravity2 && (-[_TUIRenderModelVideo cornerRadius](self, "cornerRadius"), v21 = v20, [modelCopy cornerRadius], v21 == v22))
        {
          actionHandler = [(_TUIRenderModelVideo *)self actionHandler];
          actionHandler2 = [modelCopy actionHandler];
          v16 = actionHandler == actionHandler2;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end