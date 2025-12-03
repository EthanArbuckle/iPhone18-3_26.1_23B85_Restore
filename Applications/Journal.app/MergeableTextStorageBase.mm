@interface MergeableTextStorageBase
- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange;
- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range;
- (id)attributesAtIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange;
- (id)string;
- (unint64_t)length;
@end

@implementation MergeableTextStorageBase

- (id)string
{
  mutableAttributedString = [(MergeableTextStorageBase *)self mutableAttributedString];
  string = [mutableAttributedString string];

  return string;
}

- (unint64_t)length
{
  mutableAttributedString = [(MergeableTextStorageBase *)self mutableAttributedString];
  v3 = [mutableAttributedString length];

  return v3;
}

- (id)attributesAtIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  mutableAttributedString = [(MergeableTextStorageBase *)self mutableAttributedString];
  v7 = [mutableAttributedString attributesAtIndex:index effectiveRange:range];

  return v7;
}

- (id)attributesAtIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange
{
  length = inRange.length;
  location = inRange.location;
  mutableAttributedString = [(MergeableTextStorageBase *)self mutableAttributedString];
  v10 = [mutableAttributedString attributesAtIndex:index longestEffectiveRange:range inRange:{location, length}];

  return v10;
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index effectiveRange:(_NSRange *)range
{
  attributeCopy = attribute;
  mutableAttributedString = [(MergeableTextStorageBase *)self mutableAttributedString];
  v10 = [mutableAttributedString attribute:attributeCopy atIndex:index effectiveRange:range];

  return v10;
}

- (id)attribute:(id)attribute atIndex:(unint64_t)index longestEffectiveRange:(_NSRange *)range inRange:(_NSRange)inRange
{
  length = inRange.length;
  location = inRange.location;
  attributeCopy = attribute;
  mutableAttributedString = [(MergeableTextStorageBase *)self mutableAttributedString];
  v13 = [mutableAttributedString attribute:attributeCopy atIndex:index longestEffectiveRange:range inRange:{location, length}];

  return v13;
}

@end