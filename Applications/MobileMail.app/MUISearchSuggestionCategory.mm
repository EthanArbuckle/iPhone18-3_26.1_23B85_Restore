@interface MUISearchSuggestionCategory
+ (id)cannedCategory;
+ (id)contactCategory;
+ (id)dateCategory;
+ (id)genericCategory;
+ (id)mailboxCategory;
+ (id)otherCategory;
- (BOOL)isLegacy;
@end

@implementation MUISearchSuggestionCategory

+ (id)contactCategory
{
  if (qword_1006DD440 != -1)
  {
    sub_10048B270();
  }

  v3 = qword_1006DD438;

  return v3;
}

+ (id)genericCategory
{
  if (qword_1006DD4F0 != -1)
  {
    sub_10048B69C();
  }

  v3 = qword_1006DD4E8;

  return v3;
}

+ (id)dateCategory
{
  if (qword_1006DD6A8 != -1)
  {
    sub_10048C36C();
  }

  v3 = qword_1006DD6A0;

  return v3;
}

+ (id)otherCategory
{
  if (qword_1006DD6B8 != -1)
  {
    sub_10048C380();
  }

  v3 = qword_1006DD6B0;

  return v3;
}

+ (id)cannedCategory
{
  if (qword_1006DD6C8 != -1)
  {
    sub_10048C394();
  }

  v3 = qword_1006DD6C0;

  return v3;
}

- (BOOL)isLegacy
{
  v3 = +[MUISearchSuggestionCategory mailboxCategory];
  if (([(MUISearchSuggestionCategory *)self isGroupedInCategory:v3]& 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v5 = +[MUISearchSuggestionCategory otherCategory];
    if (([(MUISearchSuggestionCategory *)self isGroupedInCategory:v5]& 1) != 0)
    {
      v4 = 1;
    }

    else
    {
      v6 = +[MUISearchSuggestionCategory cannedCategory];
      v4 = [(MUISearchSuggestionCategory *)self isGroupedInCategory:v6];
    }
  }

  return v4;
}

+ (id)mailboxCategory
{
  if (qword_1006DD7E8 != -1)
  {
    sub_10048D278();
  }

  v3 = qword_1006DD7E0;

  return v3;
}

@end