@interface D2DSetupBackupSyncViewController
- (_TtC18SharingViewService32D2DSetupBackupSyncViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
@end

@implementation D2DSetupBackupSyncViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100077338();
}

- (_TtC18SharingViewService32D2DSetupBackupSyncViewController)initWithContentView:(id)view
{
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_backupSymbolView] = 0;
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_progressView] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for D2DSetupBackupSyncViewController();
  return [(D2DSetupBaseViewController *)&v5 initWithContentView:view];
}

@end