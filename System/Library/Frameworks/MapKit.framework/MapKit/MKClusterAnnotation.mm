@interface MKClusterAnnotation
- (BOOL)isEqual:(id)a3;
- (CLLocationCoordinate2D)_averageCoordinate;
- (CLLocationCoordinate2D)coordinate;
- (MKClusterAnnotation)initWithMemberAnnotations:(NSArray *)memberAnnotations;
- (NSString)subtitle;
- (NSString)title;
- (void)_memberAnnotationCoordinateDidChange;
- (void)setSubtitle:(NSString *)subtitle;
- (void)setTitle:(NSString *)title;
@end

@implementation MKClusterAnnotation

- (BOOL)isEqual:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (![a3 _mapkit_isMKClusterAnnotation])
  {
    return 0;
  }

  v5 = *(a3 + 1);
  v6 = [(NSArray *)self->_memberAnnotations count];
  if (v6 != [v5 count])
  {
    return 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_memberAnnotations;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v5 objectAtIndex:{v10, v17}];

        if (v13 != v14)
        {
          v15 = 0;
          goto LABEL_14;
        }

        ++v10;
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_14:

  return v15;
}

- (CLLocationCoordinate2D)_averageCoordinate
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(MKClusterAnnotation *)self memberAnnotations];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v18 + 1) + 8 * i) coordinate];
        v8 = v8 + v10;
        v7 = v7 + v11;
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
  }

  v12 = [(MKClusterAnnotation *)self memberAnnotations];
  v13 = v8 / [v12 count];
  v14 = [(MKClusterAnnotation *)self memberAnnotations];
  v15 = CLLocationCoordinate2DMake(v13, v7 / [v14 count]);

  latitude = v15.latitude;
  longitude = v15.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_memberAnnotationCoordinateDidChange
{
  [(MKClusterAnnotation *)self willChangeValueForKey:@"coordinate"];
  *&self->_flags &= ~1u;

  [(MKClusterAnnotation *)self didChangeValueForKey:@"coordinate"];
}

- (MKClusterAnnotation)initWithMemberAnnotations:(NSArray *)memberAnnotations
{
  v8.receiver = self;
  v8.super_class = MKClusterAnnotation;
  v4 = [(MKClusterAnnotation *)&v8 init];
  if (v4)
  {
    v5 = [(NSArray *)memberAnnotations copy];
    v6 = v4->_memberAnnotations;
    v4->_memberAnnotations = v5;
  }

  return v4;
}

- (CLLocationCoordinate2D)coordinate
{
  if ((*&self->_flags & 1) == 0)
  {
    [(MKClusterAnnotation *)self _averageCoordinate];
    self->__coordinate.latitude = v3;
    self->__coordinate.longitude = v4;
    *&self->_flags = *&self->_flags & 0xFE | ((objc_opt_respondsToSelector() & 1) == 0);
  }

  latitude = self->__coordinate.latitude;
  longitude = self->__coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (NSString)subtitle
{
  subtitle = self->__subtitle;
  if (!subtitle)
  {
    if ((*&self->_flags & 4) != 0)
    {
      subtitle = 0;
    }

    else
    {
      v4 = MEMORY[0x1E696ADA0];
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_memberAnnotations, "count") - 1}];
      v6 = [v4 localizedStringFromNumber:v5 numberStyle:1];

      v7 = _MKLocalizedStringFromThisBundle(@"MoreAnnotations");
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:v7, v6];
      v9 = self->__subtitle;
      self->__subtitle = v8;

      *&self->_flags |= 4u;
      subtitle = self->__subtitle;
    }
  }

  return subtitle;
}

- (void)setSubtitle:(NSString *)subtitle
{
  *&self->_flags |= 4u;
  v4 = [(NSString *)subtitle copy];
  v5 = self->__subtitle;
  self->__subtitle = v4;
}

- (NSString)title
{
  title = self->__title;
  if (!title)
  {
    if ((*&self->_flags & 2) != 0)
    {
      title = 0;
    }

    else
    {
      v4 = [(MKClusterAnnotation *)self memberAnnotations];
      v5 = [v4 firstObject];

      if (objc_opt_respondsToSelector())
      {
        v6 = [v5 title];
        v7 = [v6 copy];
        v8 = self->__title;
        self->__title = v7;
      }

      *&self->_flags |= 2u;

      title = self->__title;
    }
  }

  return title;
}

- (void)setTitle:(NSString *)title
{
  *&self->_flags |= 2u;
  v4 = [(NSString *)title copy];
  v5 = self->__title;
  self->__title = v4;
}

@end