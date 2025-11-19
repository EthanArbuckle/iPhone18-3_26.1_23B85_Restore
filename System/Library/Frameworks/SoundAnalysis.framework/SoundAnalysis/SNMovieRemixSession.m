@interface SNMovieRemixSession
- (id)subscribeWithFinalResultHandler:(id)a3 completionHandler:(id)a4;
- (void)finishWithError:(id)a3;
- (void)setInFrameMixMode:(BOOL)a3;
- (void)yieldBuffer:(id)a3;
@end

@implementation SNMovieRemixSession

- (id)subscribeWithFinalResultHandler:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  v11 = sub_1C9810E24(sub_1C97BD1EC, v8, sub_1C97F042C, v9);

  return v11;
}

- (void)yieldBuffer:(id)a3
{
  v4 = a3;
  v11 = self;
  sub_1C9811124(v4, v11, v5, v6, v7, v8, v9, v10);
}

- (void)setInFrameMixMode:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1C98111F4(v3);
}

- (void)finishWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1C98112A8(a3);
}

@end