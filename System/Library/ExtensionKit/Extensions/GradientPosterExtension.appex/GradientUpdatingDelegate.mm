@interface GradientUpdatingDelegate
- (_TtC23GradientPosterExtension24GradientUpdatingDelegate)init;
- (void)updateConfiguration:(id)configuration completion:(id)completion;
- (void)updateDescriptors:(id)descriptors completion:(id)completion;
@end

@implementation GradientUpdatingDelegate

- (void)updateDescriptors:(id)descriptors completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_1000041F0(0, &unk_100018F00, PRPosterDescriptor_ptr);
  v6 = sub_10000CED0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  selfCopy = self;
  sub_100003338(v6, sub_100002174, v7);
}

- (void)updateConfiguration:(id)configuration completion:(id)completion
{
  v5 = _Block_copy(completion);
  v5[2](v5, configuration, 0);

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