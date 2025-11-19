@interface NSXPCInterface
+ (id)_maps_mapsCompanionDaemonXPCInterface;
+ (id)_maps_mapsPushDaemonXPCInterface;
+ (id)_maps_mapsSiriXPCInterface;
@end

@implementation NSXPCInterface

+ (id)_maps_mapsCompanionDaemonXPCInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsCompanionDaemonXPCInterface];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v2 setClasses:v4 forSelector:"loadDirections:reply:" argumentIndex:0 ofReply:0];

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  [v2 setClasses:v6 forSelector:"loadDirections:reply:" argumentIndex:0 ofReply:1];

  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  [v2 setClasses:v8 forSelector:"startPreparedNavigation:reply:" argumentIndex:0 ofReply:0];

  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  [v2 setClasses:v10 forSelector:"startPreparedNavigation:reply:" argumentIndex:0 ofReply:1];

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  [v2 setClasses:v12 forSelector:"endNavigationWithReply:" argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)_maps_mapsPushDaemonXPCInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsPushDaemonXPCInterface];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v2 setClasses:v4 forSelector:"handleTrafficeReroute:reply:" argumentIndex:0 ofReply:0];

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  [v2 setClasses:v6 forSelector:"handleTrafficeReroute:reply:" argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)_maps_mapsSiriXPCInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MapsSiriXPCInterface];
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v3, objc_opt_class(), 0];
  [v2 setClasses:v4 forSelector:"handleTrafficeReroute:reply:" argumentIndex:0 ofReply:0];

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  [v2 setClasses:v6 forSelector:"handleTrafficeReroute:reply:" argumentIndex:0 ofReply:1];

  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  [v2 setClasses:v8 forSelector:"endNavigationWithReply:" argumentIndex:0 ofReply:1];

  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
  [v2 setClasses:v10 forSelector:"getGuidanceState:reply:" argumentIndex:0 ofReply:0];

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  [v2 setClasses:v12 forSelector:"getGuidanceState:reply:" argumentIndex:0 ofReply:1];

  v13 = objc_opt_class();
  v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
  [v2 setClasses:v14 forSelector:"repeatLastReroutePromptWithReply:" argumentIndex:0 ofReply:1];

  v15 = objc_opt_class();
  v16 = [NSSet setWithObjects:v15, objc_opt_class(), 0];
  [v2 setClasses:v16 forSelector:"repeatLastGuidanceInstructionWithReply:" argumentIndex:0 ofReply:1];

  v17 = objc_opt_class();
  v18 = [NSSet setWithObjects:v17, objc_opt_class(), 0];
  [v2 setClasses:v18 forSelector:"loadDirections:reply:" argumentIndex:0 ofReply:0];

  v19 = objc_opt_class();
  v20 = [NSSet setWithObjects:v19, objc_opt_class(), 0];
  [v2 setClasses:v20 forSelector:"loadDirections:reply:" argumentIndex:0 ofReply:1];

  v21 = objc_opt_class();
  v22 = [NSSet setWithObjects:v21, objc_opt_class(), 0];
  [v2 setClasses:v22 forSelector:"startPreparedNavigation:reply:" argumentIndex:0 ofReply:0];

  v23 = objc_opt_class();
  v24 = [NSSet setWithObjects:v23, objc_opt_class(), 0];
  [v2 setClasses:v24 forSelector:"startPreparedNavigation:reply:" argumentIndex:0 ofReply:1];

  v25 = objc_opt_class();
  v26 = [NSSet setWithObjects:v25, objc_opt_class(), 0];
  [v2 setClasses:v26 forSelector:"setNavigationMuted:" argumentIndex:0 ofReply:0];

  v27 = objc_opt_class();
  v28 = [NSSet setWithObjects:v27, objc_opt_class(), 0];
  [v2 setClasses:v28 forSelector:"setNavigationVoiceVolume:" argumentIndex:0 ofReply:0];

  return v2;
}

@end