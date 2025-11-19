@interface CRTextStorageBase
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5;
- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6;
- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5;
- (id)string;
- (unint64_t)length;
@end

@implementation CRTextStorageBase

- (id)string
{
  v2 = [(CRTextStorageBase *)self mutableAttributedString];
  v3 = [v2 string];

  return v3;
}

- (unint64_t)length
{
  v2 = [(CRTextStorageBase *)self mutableAttributedString];
  v3 = [v2 length];

  return v3;
}

- (id)attributesAtIndex:(unint64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = [(CRTextStorageBase *)self mutableAttributedString];
  v7 = [v6 attributesAtIndex:a3 effectiveRange:a4];

  return v7;
}

- (id)attributesAtIndex:(unint64_t)a3 longestEffectiveRange:(_NSRange *)a4 inRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v9 = [(CRTextStorageBase *)self mutableAttributedString];
  v10 = [v9 attributesAtIndex:a3 longestEffectiveRange:a4 inRange:{location, length}];

  return v10;
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 effectiveRange:(_NSRange *)a5
{
  v8 = a3;
  v9 = [(CRTextStorageBase *)self mutableAttributedString];
  v10 = [v9 attribute:v8 atIndex:a4 effectiveRange:a5];

  return v10;
}

- (id)attribute:(id)a3 atIndex:(unint64_t)a4 longestEffectiveRange:(_NSRange *)a5 inRange:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v11 = a3;
  v12 = [(CRTextStorageBase *)self mutableAttributedString];
  v13 = [v12 attribute:v11 atIndex:a4 longestEffectiveRange:a5 inRange:{location, length}];

  return v13;
}

@end