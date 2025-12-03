@interface CRLMovieRenderingOperation
- (CRLMovieRenderingOperation)initWithImageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame movieInfo:(id)info editingCoordinator:(id)coordinator;
- (void)doWorkWithReadLock;
@end

@implementation CRLMovieRenderingOperation

- (CRLMovieRenderingOperation)initWithImageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame movieInfo:(id)info editingCoordinator:(id)coordinator
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14 = size.height;
  v15 = size.width;
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = CRLMovieRenderingOperation;
  height = [(CRLSwatchRenderingOperation *)&v21 initWithImageSize:coordinator imageScale:v15 swatchFrame:v14 editingCoordinator:scale, x, y, width, height];
  v19 = height;
  if (height)
  {
    objc_storeStrong(&height->_movieInfo, info);
  }

  return v19;
}

- (void)doWorkWithReadLock
{
  v3 = +[CRLSwatchCache swatchCache];
  [(CRLSwatchRenderingOperation *)self imageSize];
  v5 = v4;
  v7 = v6;
  [(CRLSwatchRenderingOperation *)self imageScale];
  v9 = v8;
  movieInfo = self->_movieInfo;
  editingCoordinator = [(CRLSwatchRenderingOperation *)self editingCoordinator];
  v12 = [v3 imageForMovieWithSize:movieInfo imageScale:editingCoordinator movieInfo:-[CRLSwatchRenderingOperation renderForWideGamut](self editingCoordinator:"renderForWideGamut") renderForWideGamut:{v5, v7, v9}];

  -[CRLSwatchRenderingOperation deliverCGImage:](self, "deliverCGImage:", [v12 CGImage]);
}

@end