@interface _MKAnimatedTileOverlay
- (_MKAnimatedTileOverlay)initWithURLTemplate:(id)template;
- (id)URLForTilePath:(id *)path keyframeIndex:(unint64_t)index;
- (void)loadTileAtPath:(id *)path keyframeIndex:(unint64_t)index result:(id)result;
@end

@implementation _MKAnimatedTileOverlay

- (_MKAnimatedTileOverlay)initWithURLTemplate:(id)template
{
  v7.receiver = self;
  v7.super_class = _MKAnimatedTileOverlay;
  v3 = [(MKTileOverlay *)&v7 initWithURLTemplate:template];
  v4 = v3;
  if (v3)
  {
    v3->_keyframesCount = 1;
    v3->_duration = 5.0;
    v5 = v3;
  }

  return v4;
}

- (void)loadTileAtPath:(id *)path keyframeIndex:(unint64_t)index result:(id)result
{
  resultCopy = result;
  v9 = *&path->var2;
  v19[0] = *&path->var0;
  v19[1] = v9;
  v10 = [(_MKAnimatedTileOverlay *)self URLForTilePath:v19 keyframeIndex:index];
  v11 = [objc_alloc(MEMORY[0x1E696AD68]) initWithURL:v10 cachePolicy:1 timeoutInterval:120.0];
  mEMORY[0x1E696AF78] = [MEMORY[0x1E696AF78] sharedSession];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __77___MKAnimatedTileOverlay_CustomLoading__loadTileAtPath_keyframeIndex_result___block_invoke;
  v16[3] = &unk_1E76CD410;
  v16[4] = self;
  v13 = v10;
  v17 = v13;
  v14 = resultCopy;
  v18 = v14;
  v15 = [mEMORY[0x1E696AF78] dataTaskWithRequest:v11 completionHandler:v16];
  [v15 resume];
}

- (id)URLForTilePath:(id *)path keyframeIndex:(unint64_t)index
{
  uRLTemplate = [(MKTileOverlay *)self URLTemplate];
  v7 = [uRLTemplate mutableCopy];

  fillTemplate(v7, @"{x}", path->var0);
  fillTemplate(v7, @"{y}", path->var1);
  fillTemplate(v7, @"{z}", path->var2);
  var3 = path->var3;
  v9 = v7;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f", *&var3];
  [v9 replaceOccurrencesOfString:@"{scale}" withString:v10 options:0 range:{0, objc_msgSend(v9, "length")}];

  v11 = v9;
  index = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", index];
  [v11 replaceOccurrencesOfString:@"{keyframe}" withString:index options:0 range:{0, objc_msgSend(v11, "length")}];

  v13 = [MEMORY[0x1E695DFF8] URLWithString:v11];

  return v13;
}

@end