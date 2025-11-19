@interface _TUIRenderModelVideo
- (BOOL)isEqualToRenderModel:(id)a3;
- (CGSize)size;
- (_TUIRenderModelVideo)initWithUrl:(id)a3 posterFrameResource:(id)a4 videoId:(id)a5 loop:(BOOL)a6 muted:(BOOL)a7 allowFullScreen:(BOOL)a8 autoPlay:(BOOL)a9 showPlaybackControls:(BOOL)a10 gravity:(id)a11 cornerRadius:(double)a12 topTriggerName:(id)a13 bottomTriggerName:(id)a14 leftTriggerName:(id)a15 rightTriggerName:(id)a16 actionHandler:(id)a17;
- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4;
@end

@implementation _TUIRenderModelVideo

- (_TUIRenderModelVideo)initWithUrl:(id)a3 posterFrameResource:(id)a4 videoId:(id)a5 loop:(BOOL)a6 muted:(BOOL)a7 allowFullScreen:(BOOL)a8 autoPlay:(BOOL)a9 showPlaybackControls:(BOOL)a10 gravity:(id)a11 cornerRadius:(double)a12 topTriggerName:(id)a13 bottomTriggerName:(id)a14 leftTriggerName:(id)a15 rightTriggerName:(id)a16 actionHandler:(id)a17
{
  v37 = a3;
  obj = a4;
  v22 = a4;
  v32 = a5;
  v23 = a5;
  v24 = a11;
  v38 = a13;
  v25 = a14;
  v26 = a15;
  v27 = a16;
  v36 = a17;
  v39.receiver = self;
  v39.super_class = _TUIRenderModelVideo;
  v28 = [(_TUIRenderModelVideo *)&v39 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_url, a3);
    objc_storeStrong(&v29->_posterFrameResource, obj);
    objc_storeStrong(&v29->_videoId, v32);
    v29->_loop = a6;
    v29->_muted = a7;
    v29->_allowFullScreen = a8;
    v29->_autoPlay = a9;
    v29->_showPlaybackControls = a10;
    objc_storeStrong(&v29->_gravity, a11);
    v29->_cornerRadius = a12;
    objc_storeStrong(&v29->_topTriggerName, a13);
    objc_storeStrong(&v29->_bottomTriggerName, a14);
    objc_storeStrong(&v29->_leftTriggerName, a15);
    objc_storeStrong(&v29->_rightTriggerName, a16);
    objc_storeStrong(&v29->_actionHandler, a17);
  }

  return v29;
}

- (void)appendResourcesToCollector:(id)a3 transform:(CGAffineTransform *)a4
{
  posterFrameResource = self->_posterFrameResource;
  v7 = a3;
  v6 = [(TUIImageResource *)posterFrameResource resource];
  [v7 collectResource:v6];

  [v7 collectImageResource:self->_posterFrameResource];
}

- (BOOL)isEqualToRenderModel:(id)a3
{
  v4 = a3;
  v5 = [(_TUIRenderModelVideo *)self url];
  v6 = [v4 url];
  if ([v5 isEqual:v6])
  {
    v7 = [(_TUIRenderModelVideo *)self videoId];
    v8 = [v4 videoId];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(_TUIRenderModelVideo *)self posterFrameResource];
      v10 = [v4 posterFrameResource];
      if (v9 == v10 && (v11 = -[_TUIRenderModelVideo loop](self, "loop"), v11 == [v4 loop]) && (v12 = -[_TUIRenderModelVideo muted](self, "muted"), v12 == objc_msgSend(v4, "muted")) && (v13 = -[_TUIRenderModelVideo allowFullScreen](self, "allowFullScreen"), v13 == objc_msgSend(v4, "allowFullScreen")) && (v14 = -[_TUIRenderModelVideo autoPlay](self, "autoPlay"), v14 == objc_msgSend(v4, "autoPlay")) && (v15 = -[_TUIRenderModelVideo showPlaybackControls](self, "showPlaybackControls"), v15 == objc_msgSend(v4, "showPlaybackControls")))
      {
        v18 = [(_TUIRenderModelVideo *)self gravity];
        v19 = [v4 gravity];
        if (v18 == v19 && (-[_TUIRenderModelVideo cornerRadius](self, "cornerRadius"), v21 = v20, [v4 cornerRadius], v21 == v22))
        {
          v24 = [(_TUIRenderModelVideo *)self actionHandler];
          v23 = [v4 actionHandler];
          v16 = v24 == v23;
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