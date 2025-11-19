@interface MKPlaceInfoRow
+ (id)infoRow:(id)a3 ofType:(unint64_t)a4;
@end

@implementation MKPlaceInfoRow

+ (id)infoRow:(id)a3 ofType:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v8 = v7[3];
  v7[2] = a4;
  v7[3] = v6;

  return v7;
}

@end