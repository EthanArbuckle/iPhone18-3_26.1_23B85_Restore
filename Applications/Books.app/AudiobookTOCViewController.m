@interface AudiobookTOCViewController
- (_TtC5Books26AudiobookTOCViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4;
- (void)dealloc;
- (void)onAppWillEnterForegroundWithNotification:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateTimeRemaining;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AudiobookTOCViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for AudiobookTOCViewController();
  [(AudiobookTOCViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1003DF128();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1003DFD80(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiobookTOCViewController();
  v4 = v5.receiver;
  [(AudiobookTOCViewController *)&v5 viewDidAppear:v3];
  sub_10042C670();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudiobookTOCViewController();
  v4 = v5.receiver;
  [(AudiobookTOCViewController *)&v5 viewWillDisappear:v3];
  sub_1003E1ADC();
}

- (void)_traitCollectionDidChangeWithSender:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1007A3504();
  swift_unknownObjectRelease();
  sub_1003E3740();

  sub_1000074E0(&v8);
}

- (void)updateTimeRemaining
{
  v2 = self;
  sub_1003E1FC0();
}

- (void)onAppWillEnterForegroundWithNotification:(id)a3
{
  v7 = self;
  v3 = [(AudiobookTOCViewController *)v7 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    v6 = v7;
    if (v5)
    {

      sub_10042C670();
      v6 = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

- (_TtC5Books26AudiobookTOCViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = self;
  sub_10079B9A4();

  if (v8 >> 62)
  {
    v6 = sub_1007A38D4();
  }

  else
  {
    v6 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  v12 = sub_1003E2770(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  sub_1003E3A34();

  (*(v7 + 8))(v9, v6);
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003E2FC4(v4);
}

@end