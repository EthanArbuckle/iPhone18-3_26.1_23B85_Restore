@interface WKMaterialHostingSupport
+ (BOOL)isMaterialHostingAvailable;
+ (id)contentLayerForMaterialHostingLayer:(id)a3;
+ (id)hostingLayer;
+ (id)hostingView:(id)a3;
+ (void)updateHostingLayer:(id)a3 materialEffectType:(int64_t)a4 colorScheme:(int64_t)a5 cornerRadius:(double)a6;
+ (void)updateHostingView:(id)a3 contentView:(id)a4 materialEffectType:(int64_t)a5 colorScheme:(int64_t)a6 cornerRadius:(double)a7;
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

+ (void)updateHostingLayer:(id)a3 materialEffectType:(int64_t)a4 colorScheme:(int64_t)a5 cornerRadius:(double)a6
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
    v9 = a3;
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

+ (id)contentLayerForMaterialHostingLayer:(id)a3
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  v5 = sub_19D62ADF8();

  return v5;
}

+ (id)hostingView:(id)a3
{
  sub_19E6CD5B8();
  sub_19E6CD5A8();
  sub_19E6CD548();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB017910));
  v5 = a3;
  v6 = sub_19E6CD218();

  return v6;
}

+ (void)updateHostingView:(id)a3 contentView:(id)a4 materialEffectType:(int64_t)a5 colorScheme:(int64_t)a6 cornerRadius:(double)a7
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
    v9 = a4;
    v10 = a3;
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