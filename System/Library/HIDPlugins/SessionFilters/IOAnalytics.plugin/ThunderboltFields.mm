@interface ThunderboltFields
@end

@implementation ThunderboltFields

void __get_ThunderboltFields_block_invoke(id a1)
{
  v30 = [CAField fieldWithName:@"switchType" ioProperty:0 valueType:objc_opt_class()];
  v31[0] = v30;
  v29 = [CAField fieldWithName:@"routerID" ioProperty:@"Router ID" valueType:objc_opt_class()];
  v31[1] = v29;
  v28 = [CAField fieldWithName:@"vendorID" ioProperty:@"Vendor ID" valueType:objc_opt_class()];
  v31[2] = v28;
  v27 = [CAField fieldWithName:@"deviceID" ioProperty:@"Device ID" valueType:objc_opt_class()];
  v31[3] = v27;
  v26 = [CAField fieldWithName:@"revisionID" ioProperty:@"Revision ID" valueType:objc_opt_class()];
  v31[4] = v26;
  v25 = [CAField fieldWithName:@"deviceVendorID" ioProperty:@"Device Vendor ID" valueType:objc_opt_class()];
  v31[5] = v25;
  v24 = [CAField fieldWithName:@"deviceVendorName" ioProperty:@"Device Vendor Name" valueType:objc_opt_class()];
  v31[6] = v24;
  v23 = [CAField fieldWithName:@"deviceModelID" ioProperty:@"Device Model ID" valueType:objc_opt_class()];
  v31[7] = v23;
  v22 = [CAField fieldWithName:@"deviceModelName" ioProperty:@"Device Model Name" valueType:objc_opt_class()];
  v31[8] = v22;
  v21 = [CAField fieldWithName:@"deviceModelRevision" ioProperty:@"Device Model Revision" valueType:objc_opt_class()];
  v31[9] = v21;
  v20 = [CAField fieldWithName:@"thunderboltVersion" ioProperty:@"Thunderbolt Version" valueType:objc_opt_class()];
  v31[10] = v20;
  v19 = [CAField fieldWithName:@"romVersion" ioProperty:@"ROM Version" valueType:objc_opt_class()];
  v31[11] = v19;
  v18 = [CAField fieldWithName:@"romRevision" ioProperty:@"EEPROM Revision" valueType:objc_opt_class()];
  v31[12] = v18;
  v17 = [CAField fieldWithName:@"depth" ioProperty:@"Depth" valueType:objc_opt_class()];
  v31[13] = v17;
  v16 = [CAField fieldWithName:@"routeString" ioProperty:@"Route String" valueType:objc_opt_class()];
  v31[14] = v16;
  v15 = [CAField fieldWithName:@"priSupLinkWidth" ioProperty:0 valueType:objc_opt_class()];
  v31[15] = v15;
  v14 = [CAField fieldWithName:@"priSupLinkSpeed" ioProperty:0 valueType:objc_opt_class()];
  v31[16] = v14;
  v13 = [CAField fieldWithName:@"priTarLinkWidth" ioProperty:0 valueType:objc_opt_class()];
  v31[17] = v13;
  v12 = [CAField fieldWithName:@"priTarLinkSpeed" ioProperty:0 valueType:objc_opt_class()];
  v31[18] = v12;
  v1 = [CAField fieldWithName:@"priCurLinkWidth" ioProperty:0 valueType:objc_opt_class()];
  v31[19] = v1;
  v2 = [CAField fieldWithName:@"priCurLinkSpeed" ioProperty:0 valueType:objc_opt_class()];
  v31[20] = v2;
  v3 = [CAField fieldWithName:@"secSupLinkWidth" ioProperty:0 valueType:objc_opt_class()];
  v31[21] = v3;
  v4 = [CAField fieldWithName:@"secSupLinkSpeed" ioProperty:0 valueType:objc_opt_class()];
  v31[22] = v4;
  v5 = [CAField fieldWithName:@"secTarLinkWidth" ioProperty:0 valueType:objc_opt_class()];
  v31[23] = v5;
  v6 = [CAField fieldWithName:@"secTarLinkSpeed" ioProperty:0 valueType:objc_opt_class()];
  v31[24] = v6;
  v7 = [CAField fieldWithName:@"secCurLinkWidth" ioProperty:0 valueType:objc_opt_class()];
  v31[25] = v7;
  v8 = [CAField fieldWithName:@"secCurLinkSpeed" ioProperty:0 valueType:objc_opt_class()];
  v31[26] = v8;
  v9 = [CAField fieldWithName:@"nvmLoadFailed" ioProperty:@"NVM Load Failed" valueType:objc_opt_class()];
  v31[27] = v9;
  v10 = [NSArray arrayWithObjects:v31 count:28];
  v11 = get_ThunderboltFields_thunderboltFields;
  get_ThunderboltFields_thunderboltFields = v10;
}

id __get_ThunderboltFields_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 containsObject:v3];

  return v4;
}

@end