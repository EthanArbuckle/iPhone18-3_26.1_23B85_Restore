@interface WalkSuggestionCollectionViewCell
- (void)prepareForReuse;
@end

@implementation WalkSuggestionCollectionViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WalkSuggestionCollectionViewCell();
  v2 = v3.receiver;
  [(WalkSuggestionCollectionViewCell *)&v3 prepareForReuse];
  [*&v2[OBJC_IVAR____TtC10FitnessApp32WalkSuggestionCollectionViewCell_timeLabel] setAttributedText:{0, v3.receiver, v3.super_class}];
}

@end