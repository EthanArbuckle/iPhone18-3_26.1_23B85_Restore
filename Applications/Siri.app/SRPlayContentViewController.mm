@interface SRPlayContentViewController
- (SRPlayContentViewController)initWithPlayContent:(id)a3;
@end

@implementation SRPlayContentViewController

- (SRPlayContentViewController)initWithPlayContent:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SRPlayContentViewController;
  v6 = [(SRPlayContentViewController *)&v14 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_playContent, a3);
    v8 = [(SAVCSPlayContent *)v7->_playContent _sr_playerForHighResolutionPlayback:[(SRPlayContentViewController *)v7 shouldPlayHighResolutionContent]];
    v9 = AFSiriLogContextConnection;
    if (v8)
    {
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
      {
        playContent = v7->_playContent;
        v11 = v9;
        v12 = [(SAVCSPlayContent *)playContent dictionary];
        *buf = 136315650;
        v16 = "[SRPlayContentViewController initWithPlayContent:]";
        v17 = 2112;
        v18 = v8;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Received player from SAVCSPlayContent; beginning playback\n    Player: %@\n    Play content command: %@", buf, 0x20u);
      }

      [(SRPlayContentViewController *)v7 setPlayer:v8];
    }

    else if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF3D4(&v7->_playContent, v9);
    }

    [(SRPlayContentViewController *)v7 setAllowsPictureInPicturePlayback:0];
  }

  return v7;
}

@end