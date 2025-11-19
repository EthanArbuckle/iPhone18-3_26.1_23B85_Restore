@interface RestoreInstallCreator
+ (id)createRestoreFromCoordinator:(id)a3 policy:(id)a4 error:(id *)a5;
- (_TtC9appstored21RestoreInstallCreator)init;
@end

@implementation RestoreInstallCreator

+ (id)createRestoreFromCoordinator:(id)a3 policy:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100083E50(v6, v7);

  return v8;
}

- (_TtC9appstored21RestoreInstallCreator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RestoreInstallCreator();
  return [(RestoreInstallCreator *)&v3 init];
}

@end