@interface ZoomUI_PHSOSViewController
- (void)presentMedicalID;
@end

@implementation ZoomUI_PHSOSViewController

- (void)presentMedicalID
{
  v3.receiver = self;
  v3.super_class = ZoomUI_PHSOSViewController;
  [(ZoomUI_PHSOSViewController *)&v3 presentMedicalID];
  v2 = [getZoomServicesClass() sharedInstance];
  [v2 notifyZoomSOSMedicalIDShown];
}

@end