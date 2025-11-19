@interface BKViewBookUpdatesOperation
- (BKViewBookUpdatesOperation)init;
- (BKViewBookUpdatesOperation)initWithAdamID:(id)a3 version:(id)a4;
- (NSError)error;
- (NSString)parameters;
- (void)main;
- (void)setError:(id)a3;
- (void)setParameters:(id)a3;
@end

@implementation BKViewBookUpdatesOperation

- (BKViewBookUpdatesOperation)initWithAdamID:(id)a3 version:(id)a4
{
  v5 = sub_1007A2254();
  v7 = v6;
  v8 = sub_1007A2254();
  v9 = (self + OBJC_IVAR___BKViewBookUpdatesOperation_parameters);
  *v9 = 0;
  v9[1] = 0;
  *(self + OBJC_IVAR___BKViewBookUpdatesOperation_error) = 0;
  v10 = (self + OBJC_IVAR___BKViewBookUpdatesOperation_adamID);
  *v10 = v5;
  v10[1] = v7;
  v11 = (self + OBJC_IVAR___BKViewBookUpdatesOperation_version);
  *v11 = v8;
  v11[1] = v12;
  v14.receiver = self;
  v14.super_class = type metadata accessor for ViewBookUpdatesOperation();
  return [(BKViewBookUpdatesOperation *)&v14 init];
}

- (NSString)parameters
{
  v2 = self + OBJC_IVAR___BKViewBookUpdatesOperation_parameters;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1007A2214();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParameters:(id)a3
{
  if (a3)
  {
    v4 = sub_1007A2254();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___BKViewBookUpdatesOperation_parameters);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSError)error
{
  v3 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
  swift_beginAccess();
  if (*(self + v3))
  {
    swift_errorRetain();
    v4 = sub_1007967C4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setError:(id)a3
{
  v5 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = self;
  v7 = a3;
}

- (void)main
{
  v2 = self;
  ViewBookUpdatesOperation.main()();
}

- (BKViewBookUpdatesOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end