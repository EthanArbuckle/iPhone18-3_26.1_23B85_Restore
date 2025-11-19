@interface GradientUpdatingDelegate
- (_TtC23GradientPosterExtension24GradientUpdatingDelegate)init;
- (void)updateConfiguration:(id)a3 completion:(id)a4;
- (void)updateDescriptors:(id)a3 completion:(id)a4;
@end

@implementation GradientUpdatingDelegate

- (void)updateDescriptors:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1000041F0(0, &unk_100018F00, PRPosterDescriptor_ptr);
  v6 = sub_10000CED0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self;
  sub_100003338(v6, sub_100002174, v7);
}

- (void)updateConfiguration:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v5[2](v5, a3, 0);

  _Block_release(v5);
}

- (_TtC23GradientPosterExtension24GradientUpdatingDelegate)init
{
  *(&self->super.isa + OBJC_IVAR____TtC23GradientPosterExtension24GradientUpdatingDelegate_currentDescriptorsVersion) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for GradientUpdatingDelegate();
  return [(GradientUpdatingDelegate *)&v3 init];
}

@end