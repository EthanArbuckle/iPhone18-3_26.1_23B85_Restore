@interface MTShareUtilActivityViewController
- (MTShareUtilActivityViewController)initWithDataSource:(id)a3;
- (id)_customizationGroupsForActivityViewController:(id)a3;
- (id)_titleForActivity:(id)a3;
- (id)customLocalizedActionTitleForActivityViewController:(id)a3;
- (id)titleForShareFromMode:(int64_t)a3;
- (int64_t)shareFromModeForShareMode:(int64_t)a3;
- (int64_t)shareModeForShareFromMode:(int64_t)a3;
@end

@implementation MTShareUtilActivityViewController

- (MTShareUtilActivityViewController)initWithDataSource:(id)a3
{
  v4 = a3;
  [(MTShareUtilActivityViewController *)self setDataSource:v4];
  v5 = [MTShareUtil shareActivityItems:v4];

  v8.receiver = self;
  v8.super_class = MTShareUtilActivityViewController;
  v6 = [(MTShareUtilActivityViewController *)&v8 initWithActivityItems:v5 applicationActivities:&__NSArray0__struct];

  return v6;
}

- (id)_titleForActivity:(id)a3
{
  if (UIActivityTypeCopyToPasteboard == a3)
  {
    v4 = +[NSBundle mainBundle];
    v3 = [v4 localizedStringForKey:@"Copy Link" value:&stru_1004F3018 table:0];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MTShareUtilActivityViewController;
    v3 = [(MTShareUtilActivityViewController *)&v6 _titleForActivity:?];
  }

  return v3;
}

- (id)customLocalizedActionTitleForActivityViewController:(id)a3
{
  v4 = [(MTShareUtilActivityViewController *)self dataSource];
  v5 = -[MTShareUtilActivityViewController titleForShareFromMode:](self, "titleForShareFromMode:", -[MTShareUtilActivityViewController shareFromModeForShareMode:](self, "shareFromModeForShareMode:", [v4 currentShareMode]));

  return v5;
}

- (id)_customizationGroupsForActivityViewController:(id)a3
{
  if ([(MTShareUtilActivityViewController *)self canShareFromTimestamp])
  {
    v4 = [NSArray alloc];
    v5 = [(MTShareUtilActivityViewController *)self titleForShareFromMode:0];
    v6 = [(MTShareUtilActivityViewController *)self titleForShareFromMode:1];
    v7 = [v4 initWithObjects:{v5, v6, 0}];

    v8 = [(MTShareUtilActivityViewController *)self dataSource];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000CB150;
    v17[3] = &unk_1004DB6B8;
    v17[4] = self;
    v9 = +[_UIActivityItemCustomization pickerCustomizationWithIdentifier:options:selectedOptionIndex:footerText:valueChangedHandler:](_UIActivityItemCustomization, "pickerCustomizationWithIdentifier:options:selectedOptionIndex:footerText:valueChangedHandler:", @"PodcastsShareFromPicker", v7, -[MTShareUtilActivityViewController shareFromModeForShareMode:](self, "shareFromModeForShareMode:", [v8 currentShareMode]), 0, v17);

    v10 = [_UIActivityItemCustomizationGroup alloc];
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Share From" value:&stru_1004F3018 table:0];
    v19 = v9;
    v13 = [NSArray arrayWithObjects:&v19 count:1];
    v14 = [v10 _initGroupWithName:v12 identifier:@"PodcastsShareFromPickerGroup" customizations:v13];

    v18 = v14;
    v15 = [NSArray arrayWithObjects:&v18 count:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)titleForShareFromMode:(int64_t)a3
{
  v5 = objc_alloc_init(AVTimeFormatter);
  [v5 setStyle:1];
  if (a3 == 1)
  {
    [(MTShareUtilDataSource *)self->_dataSource selectedPlayerTime];
    if (v8 <= 0.0)
    {
      [(MTShareUtilDataSource *)self->_dataSource selectedReferenceTime];
      v12 = v11;
      v6 = +[NSBundle mainBundle];
      v13 = [v6 localizedStringForKey:@"From %@" value:&stru_1004F3018 table:0];
      dataSource = self->_dataSource;
      if (v12 <= 0.0)
      {
        [(MTShareUtilDataSource *)dataSource currentPlayerTime];
      }

      else
      {
        [(MTShareUtilDataSource *)dataSource selectedReferenceTime];
      }

      v15 = [v5 stringFromSeconds:?];
      v7 = [NSString localizedStringWithFormat:v13, v15];
    }

    else
    {
      v6 = +[NSBundle mainBundle];
      v9 = [v6 localizedStringForKey:@"From %@" value:&stru_1004F3018 table:0];
      [(MTShareUtilDataSource *)self->_dataSource selectedPlayerTime];
      v10 = [v5 stringFromSeconds:?];
      v7 = [NSString localizedStringWithFormat:v9, v10];
    }
  }

  else
  {
    if (a3)
    {
      v7 = &stru_1004F3018;
      goto LABEL_12;
    }

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"From Start" value:&stru_1004F3018 table:0];
  }

LABEL_12:

  return v7;
}

- (int64_t)shareModeForShareFromMode:(int64_t)a3
{
  if (a3)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (int64_t)shareFromModeForShareMode:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 1;
  }

  else
  {
    return qword_1003FE888[a3 - 1];
  }
}

@end