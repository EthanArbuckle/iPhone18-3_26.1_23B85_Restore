@interface TransitDirectionsListImageItem
- (TransitDirectionsListImageItem)initWithImage:(id)a3 instructions:(id)a4;
- (TransitDirectionsListImageItem)initWithImages:(id)a3 alternateImages:(id)a4 instructions:(id)a5;
- (id)alternateImageSourceForStyle:(unint64_t)a3;
- (id)imageSourceForStyle:(unint64_t)a3;
@end

@implementation TransitDirectionsListImageItem

- (id)alternateImageSourceForStyle:(unint64_t)a3
{
  alternateImages = self->_alternateImages;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)alternateImages objectForKeyedSubscript:v6];

  if (a3 && !v7)
  {
    v7 = [(NSDictionary *)self->_alternateImages objectForKeyedSubscript:&off_1016E9E00];
  }

  return v7;
}

- (id)imageSourceForStyle:(unint64_t)a3
{
  images = self->_images;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)images objectForKeyedSubscript:v6];

  if (a3 && !v7)
  {
    v7 = [(NSDictionary *)self->_images objectForKeyedSubscript:&off_1016E9E00];
  }

  return v7;
}

- (TransitDirectionsListImageItem)initWithImages:(id)a3 alternateImages:(id)a4 instructions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = TransitDirectionsListImageItem;
  v10 = [(TransitDirectionsListItem *)&v17 initWithInstructions:a5];
  if (v10)
  {
    v11 = [v8 copy];
    images = v10->_images;
    v10->_images = v11;

    v13 = [v9 copy];
    alternateImages = v10->_alternateImages;
    v10->_alternateImages = v13;

    v15 = v10;
  }

  return v10;
}

- (TransitDirectionsListImageItem)initWithImage:(id)a3 instructions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  v9 = v8;
  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:&off_1016E9DE8];
  }

  v10 = [(TransitDirectionsListImageItem *)self initWithImages:v9 instructions:v7];

  return v10;
}

@end