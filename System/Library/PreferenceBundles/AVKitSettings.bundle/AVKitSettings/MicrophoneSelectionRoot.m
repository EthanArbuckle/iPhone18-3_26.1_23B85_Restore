@interface MicrophoneSelectionRoot
- (_TtC13AVKitSettings23MicrophoneSelectionRoot)initWithCoder:(id)a3;
- (_TtC13AVKitSettings23MicrophoneSelectionRoot)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation MicrophoneSelectionRoot

- (_TtC13AVKitSettings23MicrophoneSelectionRoot)initWithNibName:(id)a3 bundle:(id)a4
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3)
  {
    v6 = sub_23C0E9A10();
    a3 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = a4;
  v9 = sub_23C0B675C(v6, a3, a4);

  return v9;
}

- (_TtC13AVKitSettings23MicrophoneSelectionRoot)initWithCoder:(id)a3
{
  sub_23C0E9B90();
  sub_23C0E9B80();
  sub_23C0E9B40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23C0B69F0(a3);

  return v4;
}

@end