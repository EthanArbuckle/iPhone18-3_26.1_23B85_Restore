@interface WFShortcutsSettingsStringsController
- (id)specifiers;
@end

@implementation WFShortcutsSettingsStringsController

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v14 = OBJC_IVAR___PSListController__specifiers;
    v4 = [[NSMutableArray alloc] initWithCapacity:{-[WFShortcutsSettingsStringsController numberOfParts](self, "numberOfParts")}];
    if ([(WFShortcutsSettingsStringsController *)self numberOfParts]>= 1)
    {
      v5 = 0;
      v6 = PSFooterTextGroupKey;
      do
      {
        v7 = [NSString stringWithFormat:@"Part%li", v5];
        v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:0 edit:0];
        stringsFileName = [(WFShortcutsSettingsStringsController *)self stringsFileName];
        v10 = WFShortcutsSettingsGetValueForKey(v7, stringsFileName);
        [v8 setProperty:v10 forKey:v6];

        [v4 addObject:v8];
        ++v5;
      }

      while (v5 < [(WFShortcutsSettingsStringsController *)self numberOfParts]);
    }

    v11 = [v4 copy];
    v12 = *&self->PSListController_opaque[v14];
    *&self->PSListController_opaque[v14] = v11;

    v3 = *&self->PSListController_opaque[v14];
  }

  return v3;
}

@end