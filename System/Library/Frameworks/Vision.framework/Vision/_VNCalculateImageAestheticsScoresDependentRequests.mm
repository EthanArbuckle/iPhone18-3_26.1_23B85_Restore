@interface _VNCalculateImageAestheticsScoresDependentRequests
- (_VNCalculateImageAestheticsScoresDependentRequests)initWithRevision:(unint64_t)revision error:(id *)error;
- (id)requests;
@end

@implementation _VNCalculateImageAestheticsScoresDependentRequests

- (id)requests
{
  v5[2] = *MEMORY[0x1E69E9840];
  junkRequest = self->_junkRequest;
  v5[0] = self->_oldAestheticsRequest;
  v5[1] = junkRequest;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (_VNCalculateImageAestheticsScoresDependentRequests)initWithRevision:(unint64_t)revision error:(id *)error
{
  v12.receiver = self;
  v12.super_class = _VNCalculateImageAestheticsScoresDependentRequests;
  v5 = [(_VNCalculateImageAestheticsScoresDependentRequests *)&v12 init:revision];
  if (!v5 || (v6 = objc_alloc_init(VNClassifyImageAestheticsRequest), oldAestheticsRequest = v5->_oldAestheticsRequest, v5->_oldAestheticsRequest = v6, oldAestheticsRequest, v8 = objc_alloc_init(VNClassifyJunkImageRequest), junkRequest = v5->_junkRequest, v5->_junkRequest = v8, junkRequest, revision == 1) && [(VNRequest *)v5->_oldAestheticsRequest setRevision:3737841667 error:0]&& [(VNRequest *)v5->_junkRequest setRevision:3737841669 error:0])
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end