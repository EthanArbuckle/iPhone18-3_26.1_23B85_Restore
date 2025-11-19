@interface AADevice
- (AADevice)initWithDictionary:(id)a3;
@end

@implementation AADevice

- (AADevice)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(AADevice *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"model"];
    model = v5->_model;
    v5->_model = v6;

    v8 = [v4 objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 objectForKeyedSubscript:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v10;

    v12 = [v4 objectForKeyedSubscript:@"swVersion"];
    swVersion = v5->_swVersion;
    v5->_swVersion = v12;

    v14 = [v4 objectForKeyedSubscript:@"modelSmallPhotoURL3x"];
    modelSmallPhotoURL3x = v5->_modelSmallPhotoURL3x;
    v5->_modelSmallPhotoURL3x = v14;

    v16 = [v4 objectForKeyedSubscript:@"modelSmallPhotoURL2x"];
    modelSmallPhotoURL2x = v5->_modelSmallPhotoURL2x;
    v5->_modelSmallPhotoURL2x = v16;

    v18 = [v4 objectForKeyedSubscript:@"modelSmallPhotoURL1x"];
    modelSmallPhotoURL1x = v5->_modelSmallPhotoURL1x;
    v5->_modelSmallPhotoURL1x = v18;

    v20 = [v4 objectForKeyedSubscript:@"modelLargePhotoURL3x"];
    modelLargePhotoURL3x = v5->_modelLargePhotoURL3x;
    v5->_modelLargePhotoURL3x = v20;

    v22 = [v4 objectForKeyedSubscript:@"modelLargePhotoURL2x"];
    modelLargePhotoURL2x = v5->_modelLargePhotoURL2x;
    v5->_modelLargePhotoURL2x = v22;

    v24 = [v4 objectForKeyedSubscript:@"modelLargePhotoURL1x"];
    modelLargePhotoURL1x = v5->_modelLargePhotoURL1x;
    v5->_modelLargePhotoURL1x = v24;

    v26 = [v4 objectForKeyedSubscript:@"modelDisplayName"];
    modelDisplayName = v5->_modelDisplayName;
    v5->_modelDisplayName = v26;
  }

  return v5;
}

@end