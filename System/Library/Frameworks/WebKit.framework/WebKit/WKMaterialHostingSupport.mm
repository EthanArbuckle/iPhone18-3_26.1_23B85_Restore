@interface WKMaterialHostingSupport
+ (BOOL)isMaterialHostingAvailable;
+ (id)contentLayerForMaterialHostingLayer:(id)layer;
+ (id)hostingLayer;
+ (id)hostingView:(id)view;
+ (void)updateHostingLayer:(id)layer materialEffectType:(int64_t)type colorScheme:(int64_t)scheme cornerRadius:(double)radius;
+ (void)updateHostingView:(id)view contentView:(id)contentView materialEffectType:(int64_t)type colorScheme:(int64_t)scheme cornerRadius:(double)radius;
- (WKMaterialHostingSupport)init;
@end

@implementation WKMaterialHostingSupport

+ (BOOL)isMaterialHostingAvailable
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (MEMORY[0x1E6981C88])
  {
    v2 = MEMORY[0x1E6981C90] == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && MEMORY[0x1E6981C78] != 0;
}

+ (id)hostingLayer
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_19D62B5C0();

  return v2;
}

+ (void)updateHostingLayer:(id)layer materialEffectType:(int64_t)type colorScheme:(int64_t)scheme cornerRadius:(double)radius
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017908);
  if (swift_dynamicCastClass())
  {
    layerCopy = layer;
    v7 = sub_19D62ADF8();
    if (v7)
    {
      v8 = v7;
      sub_19E6CD208();
    }

    else
    {
    }
  }

  else
  {
  }
}

+ (id)contentLayerForMaterialHostingLayer:(id)layer
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  layerCopy = layer;
  v5 = sub_19D62ADF8();

  return v5;
}

+ (id)hostingView:(id)view
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017910));
  viewCopy = view;
  v6 = sub_19E6CD218();

  return v6;
}

+ (void)updateHostingView:(id)view contentView:(id)contentView materialEffectType:(int64_t)type colorScheme:(int64_t)scheme cornerRadius:(double)radius
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017910);
  if (swift_dynamicCastClass())
  {
    contentViewCopy = contentView;
    viewCopy = view;
    sub_19E6CD228();
  }

  else
  {
  }
}

- (WKMaterialHostingSupport)init
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = WKMaterialHostingSupport;
  v3 = [(WKMaterialHostingSupport *)&v5 init];

  return v3;
}

@end