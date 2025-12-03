@interface AADevice
- (AADevice)initWithDictionary:(id)dictionary;
@end

@implementation AADevice

- (AADevice)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(AADevice *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"model"];
    model = v5->_model;
    v5->_model = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"swVersion"];
    swVersion = v5->_swVersion;
    v5->_swVersion = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"modelSmallPhotoURL3x"];
    modelSmallPhotoURL3x = v5->_modelSmallPhotoURL3x;
    v5->_modelSmallPhotoURL3x = v14;

    v16 = [dictionaryCopy objectForKeyedSubscript:@"modelSmallPhotoURL2x"];
    modelSmallPhotoURL2x = v5->_modelSmallPhotoURL2x;
    v5->_modelSmallPhotoURL2x = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"modelSmallPhotoURL1x"];
    modelSmallPhotoURL1x = v5->_modelSmallPhotoURL1x;
    v5->_modelSmallPhotoURL1x = v18;

    v20 = [dictionaryCopy objectForKeyedSubscript:@"modelLargePhotoURL3x"];
    modelLargePhotoURL3x = v5->_modelLargePhotoURL3x;
    v5->_modelLargePhotoURL3x = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"modelLargePhotoURL2x"];
    modelLargePhotoURL2x = v5->_modelLargePhotoURL2x;
    v5->_modelLargePhotoURL2x = v22;

    v24 = [dictionaryCopy objectForKeyedSubscript:@"modelLargePhotoURL1x"];
    modelLargePhotoURL1x = v5->_modelLargePhotoURL1x;
    v5->_modelLargePhotoURL1x = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"modelDisplayName"];
    modelDisplayName = v5->_modelDisplayName;
    v5->_modelDisplayName = v26;
  }

  return v5;
}

@end