@interface TURoute(UI)
@end

@implementation TURoute(UI)

- (void)audioRouteGlyphForDisplayStyle:()UI .cold.1(void *a1, NSObject *a2)
{
  v3 = 134217984;
  v4 = [a1 deviceType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to determine glyph for %ld. Defaulting to speaker", &v3, 0xCu);
}

@end