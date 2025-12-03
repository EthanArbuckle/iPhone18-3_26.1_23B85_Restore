@interface AVOutputContextModificationResult
- (AVOutputContextModificationResult)initWithFigRouteConfigUpdatedReason:(__CFString *)reason metrics:(id)metrics;
- (id)cancellationReason;
- (void)dealloc;
@end

@implementation AVOutputContextModificationResult

- (AVOutputContextModificationResult)initWithFigRouteConfigUpdatedReason:(__CFString *)reason metrics:(id)metrics
{
  v20.receiver = self;
  v20.super_class = AVOutputContextModificationResult;
  v5 = [(AVOutputContextDestinationChange *)&v20 init];
  v6 = *MEMORY[0x1E69AF3E8];
  v7 = FigCFEqual();
  v8 = MEMORY[0x1E69AF3F8];
  if (v7)
  {
    goto LABEL_2;
  }

  v10 = *MEMORY[0x1E69AF3D0];
  if (FigCFEqual())
  {
    v9 = 3;
  }

  else
  {
    v11 = *MEMORY[0x1E69AF400];
    if (FigCFEqual() || (v12 = *v8, FigCFEqual()))
    {
      v9 = 4;
    }

    else
    {
      v16 = *MEMORY[0x1E69AF3E0];
      if (FigCFEqual() || (v17 = *MEMORY[0x1E69AF3C8], FigCFEqual()))
      {
LABEL_2:
        v9 = 2;
        goto LABEL_8;
      }

      v18 = *MEMORY[0x1E69AF3C0];
      v19 = FigCFEqual();
      v9 = 2;
      if (!v19)
      {
        v9 = 3;
      }
    }
  }

LABEL_8:
  v5->mStatus = v9;
  v13 = *v8;
  if (FigCFEqual())
  {
    v14 = @"AVOutputContextDestinationChangeCancellationReasonAuthorizationSkipped";
  }

  else
  {
    v14 = 0;
  }

  v5->mCancellationReason = &v14->isa;
  v5->_modificationMetrics = metrics;
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputContextModificationResult;
  [(AVOutputContextDestinationChange *)&v3 dealloc];
}

- (id)cancellationReason
{
  v2 = self->mCancellationReason;

  return v2;
}

@end