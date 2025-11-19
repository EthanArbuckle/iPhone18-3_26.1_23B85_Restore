@interface MKAnnotationView
+ (id)droppedPinTitle;
@end

@implementation MKAnnotationView

+ (id)droppedPinTitle
{
  v2 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"Marked Location";
  }

  else
  {
    v5 = @"Dropped Pin";
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

@end