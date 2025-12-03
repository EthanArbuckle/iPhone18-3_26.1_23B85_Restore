@interface UserDetailsEditCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setName:(id)name;
- (void)setNickname:(id)nickname;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UserDetailsEditCell

- (void)setName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  v5 = sub_11B408();
  [v5 setText:nameCopy];
}

- (void)setNickname:(id)nickname
{
  v5 = sub_AB92A0();
  v7 = v6;
  nicknameCopy = nickname;
  selfCopy = self;
  v10 = sub_11B428();
  [v10 setText:nicknameCopy];

  sub_11B9B4(v5, v7);
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UserDetailsEditCell();
  v2 = v3.receiver;
  [(UserDetailsEditCell *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 layoutSubviews];
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = sub_11B408();
  becomeFirstResponder = [v3 becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = sub_11B408();
  resignFirstResponder = [v3 resignFirstResponder];

  if (resignFirstResponder)
  {
    resignFirstResponder2 = 1;
  }

  else
  {
    v6 = sub_11B428();
    resignFirstResponder2 = [(UserDetailsEditCell *)v6 resignFirstResponder];

    selfCopy = v6;
  }

  return resignFirstResponder2;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_11A460();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_11AB00(change);
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v10 = sub_AB92A0();
  v12 = v11;
  fieldCopy = field;
  stringCopy = string;
  selfCopy = self;
  LOBYTE(length) = sub_11AF74(fieldCopy, location, length, v10, v12);

  return length & 1;
}

@end