@interface CACVocabularyListCell
- (BOOL)hasPronunciationWithSpecifier:(id)a3;
- (CACVocabularyListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (CACVocabularyListCellDelegate)delegate;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
- (id)menuForSpecifier:(id)a3;
- (id)newControl;
- (unint64_t)accessibilityTraits;
- (void)didTapReRecord;
- (void)didTapRecord;
- (void)didTapRemovePronunciation;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)willTransitionToState:(unint64_t)a3;
@end

@implementation CACVocabularyListCell

- (CACVocabularyListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v30.receiver = self;
  v30.super_class = CACVocabularyListCell;
  v9 = [(CACVocabularyListCell *)&v30 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(CACVocabularyListCell *)v9 control];
    [(CACVocabularyListCell *)v10 setAccessoryView:v11];

    v29 = [UIImage systemImageNamed:@"waveform"];
    v12 = [[UIImageView alloc] initWithImage:v29];
    iconView = v10->_iconView;
    v10->_iconView = v12;

    [(UIImageView *)v10->_iconView setContentMode:1];
    v14 = v10->_iconView;
    v15 = +[UIColor secondaryLabelColor];
    [(UIImageView *)v14 setTintColor:v15];

    v16 = [(CACVocabularyListCell *)v10 contentView];
    [v16 addSubview:v10->_iconView];

    [(UIImageView *)v10->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [(UIImageView *)v10->_iconView widthAnchor];
    v27 = [v28 constraintEqualToConstant:24.0];
    v31[0] = v27;
    v25 = [(UIImageView *)v10->_iconView centerYAnchor];
    v26 = [(CACVocabularyListCell *)v10 contentView];
    v17 = [v26 centerYAnchor];
    v18 = [v25 constraintEqualToAnchor:v17];
    v31[1] = v18;
    v19 = [(UIImageView *)v10->_iconView trailingAnchor];
    v20 = [(CACVocabularyListCell *)v10 contentView];
    v21 = [v20 trailingAnchor];
    v22 = [v19 constraintEqualToAnchor:v21 constant:-0.0];
    v31[2] = v22;
    v23 = [NSArray arrayWithObjects:v31 count:3];
    [NSLayoutConstraint activateConstraints:v23];

    [(UIImageView *)v10->_iconView setHidden:[(CACVocabularyListCell *)v10 hasPronunciationWithSpecifier:v8]^ 1];
  }

  return v10;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v8.receiver = self;
  v8.super_class = CACVocabularyListCell;
  v4 = a3;
  [(CACVocabularyListCell *)&v8 refreshCellContentsWithSpecifier:v4];
  v5 = [(CACVocabularyListCell *)self control:v8.receiver];
  [(CACVocabularyListCell *)self setAccessoryView:v5];

  [(UIImageView *)self->_iconView setHidden:[(CACVocabularyListCell *)self hasPronunciationWithSpecifier:v4]^ 1];
  v6 = [(CACVocabularyListCell *)self control];
  v7 = [(CACVocabularyListCell *)self menuForSpecifier:v4];

  [v6 setMenu:v7];
}

- (id)newControl
{
  v3 = [UIButton buttonWithType:0];
  v4 = [UIImage systemImageNamed:@"ellipsis"];
  [v3 setImage:v4 forState:0];

  [v3 setFrame:{0.0, 0.0, 44.0, 44.0}];
  v5 = +[UIColor labelColor];
  [v3 setTintColor:v5];

  WeakRetained = objc_loadWeakRetained(&self->PSControlTableCell_opaque[OBJC_IVAR___PSTableCell__specifier]);
  v7 = [(CACVocabularyListCell *)self menuForSpecifier:WeakRetained];
  [v3 setMenu:v7];

  [v3 setShowsMenuAsPrimaryAction:1];
  return v3;
}

- (id)menuForSpecifier:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(CACVocabularyListCell *)self hasPronunciationWithSpecifier:v4];

  if (v6)
  {
    v7 = settingsLocString(@"VOCABULARY_RERECORD_PRONUNCIATION", @"CommandAndControlSettings");
    v8 = [UIImage _systemImageNamed:@"waveform.badge.record"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_96AC;
    v20[3] = &unk_29028;
    v20[4] = self;
    v9 = [UIAction actionWithTitle:v7 image:v8 identifier:0 handler:v20];

    v10 = settingsLocString(@"VOCABULARY_REMOVE_PRONUNCIATION", @"CommandAndControlSettings");
    v11 = [UIImage systemImageNamed:@"waveform.badge.minus"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_96B4;
    v19[3] = &unk_29028;
    v19[4] = self;
    v12 = [UIAction actionWithTitle:v10 image:v11 identifier:0 handler:v19];

    [v12 setAttributes:2];
    v21[0] = v9;
    v21[1] = v12;
    v13 = [NSArray arrayWithObjects:v21 count:2];
    [v5 addObjectsFromArray:v13];
  }

  else
  {
    v9 = settingsLocString(@"VOCABULARY_RECORD_PRONUNCIATION", @"CommandAndControlSettings");
    v14 = [UIImage _systemImageNamed:@"waveform.badge.record"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_96BC;
    v18[3] = &unk_29028;
    v18[4] = self;
    v15 = [UIAction actionWithTitle:v9 image:v14 identifier:0 handler:v18];
    [v5 addObject:v15];
  }

  v16 = [UIMenu menuWithChildren:v5];

  return v16;
}

- (BOOL)hasPronunciationWithSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:@"CACVocabularyListItem"];
  v4 = +[VCVocabularyObjC pronunciationsKey];
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)didTapReRecord
{
  v3 = [(CACVocabularyListCell *)self delegate];

  if (v3)
  {
    v4 = [(CACVocabularyListCell *)self delegate];
    [v4 vocabularyListCellDidTapReRecord:self];
  }
}

- (void)didTapRemovePronunciation
{
  v3 = [(CACVocabularyListCell *)self delegate];

  if (v3)
  {
    v4 = [(CACVocabularyListCell *)self delegate];
    [v4 vocabularyListCellDidTapRemovePronunciation:self];
  }
}

- (void)didTapRecord
{
  v3 = [(CACVocabularyListCell *)self delegate];

  if (v3)
  {
    v4 = [(CACVocabularyListCell *)self delegate];
    [v4 vocabularyListCellDidTapRecord:self];
  }
}

- (void)willTransitionToState:(unint64_t)a3
{
  v5 = [(CACVocabularyListCell *)self control];
  v6 = v5;
  if (a3)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 1.0;
  }

  [v5 setAlpha:v7];

  v8 = [(CACVocabularyListCell *)self iconView];
  [v8 setAlpha:v7];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CACVocabularyListCell;
  return [(CACVocabularyListCell *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  v18.receiver = self;
  v18.super_class = CACVocabularyListCell;
  v3 = [(CACVocabularyListCell *)&v18 accessibilityCustomActions];
  v4 = [NSMutableArray arrayWithArray:v3];

  v5 = [(CACVocabularyListCell *)self specifier];
  v6 = [(CACVocabularyListCell *)self hasPronunciationWithSpecifier:v5];

  v7 = [UIAccessibilityCustomAction alloc];
  if (v6)
  {
    v8 = settingsLocString(@"VOCABULARY_RERECORD_PRONUNCIATION", @"CommandAndControlSettings");
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_9BF8;
    v17[3] = &unk_29050;
    v17[4] = self;
    v9 = [v7 initWithName:v8 actionHandler:v17];
    [v4 addObject:v9];

    v7 = [UIAccessibilityCustomAction alloc];
    v10 = settingsLocString(@"VOCABULARY_REMOVE_PRONUNCIATION", @"CommandAndControlSettings");
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_9C18;
    v16[3] = &unk_29050;
    v16[4] = self;
    v11 = v16;
  }

  else
  {
    v10 = settingsLocString(@"VOCABULARY_RECORD_PRONUNCIATION", @"CommandAndControlSettings");
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_9C38;
    v15[3] = &unk_29050;
    v15[4] = self;
    v11 = v15;
  }

  v12 = [v7 initWithName:v10 actionHandler:v11];
  [v4 addObject:v12];

  v13 = [v4 copy];

  return v13;
}

- (id)accessibilityValue
{
  v2 = self;
  v3 = [(CACVocabularyListCell *)self specifier];
  LODWORD(v2) = [(CACVocabularyListCell *)v2 hasPronunciationWithSpecifier:v3];

  if (v2)
  {
    v4 = settingsLocString(@"VOCABULARY_HAS_PRONUNCIATION", @"CommandAndControlSettings");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CACVocabularyListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end