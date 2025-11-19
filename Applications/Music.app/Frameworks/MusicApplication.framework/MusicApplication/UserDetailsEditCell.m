@interface UserDetailsEditCell
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setName:(id)a3;
- (void)setNickname:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UserDetailsEditCell

- (void)setName:(id)a3
{
  v6 = a3;
  v4 = self;
  v5 = sub_11B408();
  [v5 setText:v6];
}

- (void)setNickname:(id)a3
{
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = a3;
  v9 = self;
  v10 = sub_11B428();
  [v10 setText:v8];

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
  v2 = self;
  v3 = sub_11B408();
  v4 = [v3 becomeFirstResponder];

  return v4;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = sub_11B408();
  v4 = [v3 resignFirstResponder];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_11B428();
    v5 = [(UserDetailsEditCell *)v6 resignFirstResponder];

    v2 = v6;
  }

  return v5;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_11A460();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_11AB00(a3);
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = sub_AB92A0();
  v12 = v11;
  v13 = a3;
  v14 = a5;
  v15 = self;
  LOBYTE(length) = sub_11AF74(v13, location, length, v10, v12);

  return length & 1;
}

@end