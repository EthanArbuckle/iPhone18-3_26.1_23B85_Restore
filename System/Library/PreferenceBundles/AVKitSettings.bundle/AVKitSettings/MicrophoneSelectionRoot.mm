@interface MicrophoneSelectionRoot
- (_TtC13AVKitSettings23MicrophoneSelectionRoot)initWithCoder:(id)coder;
- (_TtC13AVKitSettings23MicrophoneSelectionRoot)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation MicrophoneSelectionRoot

- (_TtC13AVKitSettings23MicrophoneSelectionRoot)initWithNibName:(id)name bundle:(id)bundle
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = sub_23C0E9A10();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_23C0B675C(v6, name, bundle);

  return v9;
}

- (_TtC13AVKitSettings23MicrophoneSelectionRoot)initWithCoder:(id)coder
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23C0B69F0(coder);

  return v4;
}

@end