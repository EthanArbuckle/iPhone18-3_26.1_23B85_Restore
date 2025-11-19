@interface AegirUpdatingController
- (void)updateConfiguration:(id)a3 withSessionInfo:(id)a4 completion:(id)a5;
- (void)updateDescriptors:(id)a3 withSessionInfo:(id)a4 completion:(id)a5;
@end

@implementation AegirUpdatingController

- (void)updateDescriptors:(id)a3 withSessionInfo:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_10000A83C(0, &unk_100047C20, PRPosterDescriptor_ptr);
  v8 = sub_100034924();
  _Block_copy(v7);
  v9 = a4;
  v10 = self;
  sub_10001E908(v8, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)updateConfiguration:(id)a3 withSessionInfo:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10001FBEC(v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

@end