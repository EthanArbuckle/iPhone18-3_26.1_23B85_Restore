@interface MKPlaceInfoRow
+ (id)infoRow:(id)row ofType:(unint64_t)type;
@end

@implementation MKPlaceInfoRow

+ (id)infoRow:(id)row ofType:(unint64_t)type
{
  rowCopy = row;
  v7 = objc_alloc_init(self);
  v8 = v7[3];
  v7[2] = type;
  v7[3] = rowCopy;

  return v7;
}

@end