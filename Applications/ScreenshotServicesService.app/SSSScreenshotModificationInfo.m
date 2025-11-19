@interface SSSScreenshotModificationInfo
- (BOOL)isEqual:(id)a3;
- (NSArray)annotations;
- (SSSCropInfo)cropInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initForScreenshotWithEnvironmentDescription:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SSSScreenshotModificationInfo

- (id)initForScreenshotWithEnvironmentDescription:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SSSScreenshotModificationInfo;
  v5 = [(SSSScreenshotModificationInfo *)&v17 init];
  environmentDescription = v5->_environmentDescription;
  v5->_environmentDescription = v4;
  v7 = v4;

  [(SSEnvironmentDescription *)v7 imagePointSize];
  sub_10005385C(v16, v8, v9);
  v11 = v16[1];
  v10 = v16[2];
  v5->_cropInfo.totalSize = v16[0];
  v5->_cropInfo.currentRect.origin = v11;
  v5->_cropInfo.currentRect.size = v10;
  annotationNSDatas = v5->_annotationNSDatas;
  v5->_annotationNSDatas = &__NSArray0__struct;

  v5->_vellumOpacity = 0.0;
  v13 = +[NSArray array];
  originalAnnotations = v5->_originalAnnotations;
  v5->_originalAnnotations = v13;

  v5->_paperKitChangeCounter = 0;
  return v5;
}

- (SSSCropInfo)cropInfo
{
  size = self->currentRect.size;
  retstr->totalSize = self->currentRect.origin;
  retstr->currentRect.origin = size;
  retstr->currentRect.size = self[1].totalSize;
  return self;
}

- (NSArray)annotations
{
  v2 = [(SSSScreenshotModificationInfo *)self annotationNSDatas];
  v3 = [_SSSScreenshotAnnotationController annotationsFromAnnotationData:v2];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5[12] == self->_paperKitChangeCounter && [v5[1] isEqual:self->_environmentDescription] && (objc_msgSend(v6, "cropInfo"), -[SSSScreenshotModificationInfo cropInfo](self, "cropInfo"), sub_10005387C(v20, &v19)) && (objc_msgSend(v6, "annotationNSDatas"), v7 = objc_claimAutoreleasedReturnValue(), -[SSSScreenshotModificationInfo annotationNSDatas](self, "annotationNSDatas"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9) && (objc_msgSend(v6, "vellumOpacity"), v11 = v10, -[SSSScreenshotModificationInfo vellumOpacity](self, "vellumOpacity"), v11 == v12))
    {
      v13 = [v6 imageDescription];
      v14 = [(SSSScreenshotModificationInfo *)self imageDescription];
      if (v13 == v14)
      {
        v17 = 1;
      }

      else
      {
        v15 = [v6 imageDescription];
        v16 = [(SSSScreenshotModificationInfo *)self imageDescription];
        v17 = [v15 isEqualToString:v16];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_environmentDescription);
  [(SSSScreenshotModificationInfo *)self cropInfo];
  v6 = v19;
  v5 = v20;
  *(v4 + 1) = v18;
  *(v4 + 2) = v6;
  *(v4 + 3) = v5;
  v7 = [(SSSScreenshotModificationInfo *)self annotationNSDatas];
  v8 = [v7 copy];
  v9 = v4[8];
  v4[8] = v8;

  [(SSSScreenshotModificationInfo *)self vellumOpacity];
  v4[9] = v10;
  v11 = [(SSSScreenshotModificationInfo *)self originalAnnotations];
  v12 = [v11 copy];
  v13 = v4[10];
  v4[10] = v12;

  v14 = [(SSSScreenshotModificationInfo *)self imageDescription];
  v15 = [v14 copy];
  v16 = v4[11];
  v4[11] = v15;

  v4[12] = self->_paperKitChangeCounter;
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [(SSSScreenshotModificationInfo *)[SSSScreenshotMutableModificationInfo alloc] initForScreenshotWithEnvironmentDescription:self->_environmentDescription];
  [(SSSScreenshotModificationInfo *)self cropInfo];
  [v4 setCropInfo:&v11];
  v5 = [(SSSScreenshotModificationInfo *)self annotationNSDatas];
  [v4 setAnnotationNSDatas:v5];

  [(SSSScreenshotModificationInfo *)self vellumOpacity];
  [v4 setVellumOpacity:?];
  v6 = [(SSSScreenshotModificationInfo *)self originalAnnotations];
  v7 = [v6 mutableCopy];
  [v4 setOriginalAnnotations:v7];

  v8 = [(SSSScreenshotModificationInfo *)self imageDescription];
  v9 = [v8 copy];
  [v4 setImageDescription:v9];

  [v4 setPaperKitChangeCounter:{-[SSSScreenshotModificationInfo paperKitChangeCounter](self, "paperKitChangeCounter")}];
  return v4;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = SSSScreenshotModificationInfo;
  v3 = [(SSSScreenshotModificationInfo *)&v9 description];
  origin = self->_cropInfo.currentRect.origin;
  v8[0] = self->_cropInfo.totalSize;
  v8[1] = origin;
  v8[2] = self->_cropInfo.currentRect.size;
  v5 = sub_10005398C(v8);
  v6 = [NSString stringWithFormat:@"%@, %@", v3, v5];

  return v6;
}

@end