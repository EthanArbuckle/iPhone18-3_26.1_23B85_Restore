@interface FBAChoiceCell
- (FBKQuestionChoice)choice;
- (id)appIconForChoice:(id)choice;
- (void)evaluateSelectionWithValue:(id)value;
- (void)evaluateSelectionWithValues:(id)values;
- (void)updateWithChoice:(id)choice;
@end

@implementation FBAChoiceCell

- (void)updateWithChoice:(id)choice
{
  choiceCopy = choice;
  [(FBAChoiceCell *)self setChoice:choiceCopy];
  textLabel = [(FBAChoiceCell *)self textLabel];
  [textLabel setNumberOfLines:0];

  title = [choiceCopy title];
  textLabel2 = [(FBAChoiceCell *)self textLabel];
  [textLabel2 setText:title];

  v7 = +[UIColor labelColor];
  textLabel3 = [(FBAChoiceCell *)self textLabel];
  [textLabel3 setTextColor:v7];

  textLabel4 = [(FBAChoiceCell *)self textLabel];
  [textLabel4 setTextAlignment:0];

  choice = [(FBAChoiceCell *)self choice];
  LODWORD(textLabel3) = [choice canSelect];

  if (textLabel3)
  {
    [(FBAChoiceCell *)self setUserInteractionEnabled:1];
    +[UIColor labelColor];
  }

  else
  {
    [(FBAChoiceCell *)self setUserInteractionEnabled:0];
    +[UIColor secondaryLabelColor];
  }
  v11 = ;
  textLabel5 = [(FBAChoiceCell *)self textLabel];
  [textLabel5 setTextColor:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [(FBAChoiceCell *)self appIconForChoice:choiceCopy];
    imageView = [(FBAChoiceCell *)self imageView];
    [imageView setImage:v13];
  }

  v15 = +[UIColor secondarySystemGroupedBackgroundColor];
  [(FBAChoiceCell *)self setBackgroundColor:v15];
}

- (void)evaluateSelectionWithValue:(id)value
{
  valueCopy = value;
  choice = [(FBAChoiceCell *)self choice];
  value = [choice value];
  v6 = [value isEqualToString:valueCopy];

  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  [(FBAChoiceCell *)self setAccessoryType:v7];
}

- (void)evaluateSelectionWithValues:(id)values
{
  valuesCopy = values;
  choice = [(FBAChoiceCell *)self choice];
  value = [choice value];
  v6 = [valuesCopy containsObject:value];

  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  [(FBAChoiceCell *)self setAccessoryType:v7];
}

- (id)appIconForChoice:(id)choice
{
  choiceCopy = choice;
  v5 = [choiceCopy app];

  if (v5)
  {
    v6 = +[UIScreen mainScreen];
    [v6 scale];
    v8 = v7;

    v9 = [ISIcon alloc];
    v10 = [choiceCopy app];
    identifier = [v10 identifier];
    v12 = [v9 initWithBundleIdentifier:identifier];

    textLabel = [(FBAChoiceCell *)self textLabel];
    [textLabel frame];
    v15 = v14 * 0.6;

    v16 = [[ISImageDescriptor alloc] initWithSize:v15 scale:{v15, v8}];
    v17 = [v12 imageForImageDescriptor:v16];
    v18 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v17 CGImage], 0, v8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (FBKQuestionChoice)choice
{
  WeakRetained = objc_loadWeakRetained(&self->_choice);

  return WeakRetained;
}

@end