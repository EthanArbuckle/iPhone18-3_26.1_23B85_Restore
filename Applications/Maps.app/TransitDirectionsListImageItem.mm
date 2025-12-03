@interface TransitDirectionsListImageItem
- (TransitDirectionsListImageItem)initWithImage:(id)image instructions:(id)instructions;
- (TransitDirectionsListImageItem)initWithImages:(id)images alternateImages:(id)alternateImages instructions:(id)instructions;
- (id)alternateImageSourceForStyle:(unint64_t)style;
- (id)imageSourceForStyle:(unint64_t)style;
@end

@implementation TransitDirectionsListImageItem

- (id)alternateImageSourceForStyle:(unint64_t)style
{
  alternateImages = self->_alternateImages;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)alternateImages objectForKeyedSubscript:v6];

  if (style && !v7)
  {
    v7 = [(NSDictionary *)self->_alternateImages objectForKeyedSubscript:&off_1016E9E00];
  }

  return v7;
}

- (id)imageSourceForStyle:(unint64_t)style
{
  images = self->_images;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)images objectForKeyedSubscript:v6];

  if (style && !v7)
  {
    v7 = [(NSDictionary *)self->_images objectForKeyedSubscript:&off_1016E9E00];
  }

  return v7;
}

- (TransitDirectionsListImageItem)initWithImages:(id)images alternateImages:(id)alternateImages instructions:(id)instructions
{
  imagesCopy = images;
  alternateImagesCopy = alternateImages;
  v17.receiver = self;
  v17.super_class = TransitDirectionsListImageItem;
  v10 = [(TransitDirectionsListItem *)&v17 initWithInstructions:instructions];
  if (v10)
  {
    v11 = [imagesCopy copy];
    images = v10->_images;
    v10->_images = v11;

    v13 = [alternateImagesCopy copy];
    alternateImages = v10->_alternateImages;
    v10->_alternateImages = v13;

    v15 = v10;
  }

  return v10;
}

- (TransitDirectionsListImageItem)initWithImage:(id)image instructions:(id)instructions
{
  imageCopy = image;
  instructionsCopy = instructions;
  v8 = +[NSMutableDictionary dictionary];
  v9 = v8;
  if (imageCopy)
  {
    [v8 setObject:imageCopy forKeyedSubscript:&off_1016E9DE8];
  }

  v10 = [(TransitDirectionsListImageItem *)self initWithImages:v9 instructions:instructionsCopy];

  return v10;
}

@end