@interface BKSettingsAcknowledgementsController
- (id)_stringFromBundle:(id)bundle;
- (id)specifiers;
@end

@implementation BKSettingsAcknowledgementsController

- (id)_stringFromBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = +[PSSpecifier emptyGroupSpecifier];
  bundle = [(BKSettingsAcknowledgementsController *)self bundle];
  v7 = [bundle localizedStringForKey:bundleCopy value:bundleCopy table:@"Acknowledgements"];

  [v5 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

  return v5;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v24 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"Acknowledgements"];
    v25[0] = v24;
    v23 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"RTreeTemplate"];
    v25[1] = v23;
    v22 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"MOKit"];
    v25[2] = v22;
    v21 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"Boost"];
    v25[3] = v21;
    v20 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"protobuf"];
    v25[4] = v20;
    v19 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"querystring"];
    v25[5] = v19;
    v18 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"jsonschema"];
    v25[6] = v18;
    v17 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"ObjectValues"];
    v25[7] = v17;
    v16 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"node-util"];
    v25[8] = v16;
    v5 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"JSFoundation"];
    v25[9] = v5;
    v6 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"Snowball"];
    v25[10] = v6;
    v7 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"URI-js"];
    v25[11] = v7;
    v8 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"inherits"];
    v25[12] = v8;
    v9 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"object-assign"];
    v25[13] = v9;
    v10 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"JSFramework"];
    v25[14] = v10;
    v11 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"Hinman"];
    v25[15] = v11;
    v12 = [(BKSettingsAcknowledgementsController *)self _stringFromBundle:@"version"];
    v25[16] = v12;
    v13 = [NSArray arrayWithObjects:v25 count:17];
    v14 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v13;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

@end