@interface MPAVOutputDeviceRoutingDataSourceAccessibility
- (void)setPickedRoute:(id)a3 withPassword:(id)a4 completion:(id)a5;
@end

@implementation MPAVOutputDeviceRoutingDataSourceAccessibility

- (void)setPickedRoute:(id)a3 withPassword:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v12 = getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_ptr_0;
  v18 = getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_ptr_0;
  if (!getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_ptr_0)
  {
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_block_invoke_0;
    v14[3] = &unk_29F29A5F8;
    v14[4] = &v15;
    __getAXSpringBoardUserChangedAudioRouteNotificationSymbolLoc_block_invoke_0(v14);
    v12 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v12)
  {
    [MPAVOutputDeviceRoutingDataSourceAccessibility setPickedRoute:withPassword:completion:];
  }

  CFNotificationCenterPostNotification(DarwinNotifyCenter, *v12, 0, 0, 1u);
  v13.receiver = self;
  v13.super_class = MPAVOutputDeviceRoutingDataSourceAccessibility;
  [(MPAVOutputDeviceRoutingDataSourceAccessibility *)&v13 setPickedRoute:v8 withPassword:v9 completion:v10];
}

- (void)setPickedRoute:withPassword:completion:.cold.1()
{
  v0 = [MEMORY[0x29EDB9F28] currentHandler];
  v1 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"NSString *getAXSpringBoardUserChangedAudioRouteNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"MPAVRoutingControllerAccessibility.m" lineNumber:13 description:{@"%s", dlerror()}];

  __break(1u);
}

@end