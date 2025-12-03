@interface AVAsynchronousVideoCompositionRequest
- (AVTimedMetadataGroup)sourceTimedMetadataByTrackID:(CMPersistentTrackID)trackID;
- (CMSampleBufferRef)sourceSampleBufferByTrackID:(CMPersistentTrackID)trackID;
- (CMTime)compositionTime;
- (CVPixelBufferRef)sourceFrameByTrackID:(CMPersistentTrackID)trackID;
- (OpaqueCMTaggedBufferGroup)sourceTaggedBufferGroupByTrackID:(int)d;
- (id)initUsingSession:(id)session withRenderContext:(id)context compositionFrame:(OpaqueFigVideoCompositorFrame *)frame atTime:(id *)time usingSources:(id)sources instruction:(id)instruction withSampleBuffers:(id)buffers lookupableSpatialVideoConfigurations:(id)self0;
- (id)sourceTimedMetadataByTrackID:(int)d atIndexInWindow:(int64_t)window presentationTimeStamp:(id *)stamp;
- (int64_t)numberOfSourceFramesInWindowForTrackID:(int)d;
- (int64_t)numberOfSourceSampleBuffersInWindowForTrackID:(int)d;
- (void)_validateAttachedSpatialVideoConfigurationInTaggedBufferGroup:(OpaqueCMTaggedBufferGroup *)group reportingObject:(id)object reportingSelector:(SEL)selector;
- (void)_willDeallocOrFinalize;
- (void)attachSpatialVideoConfiguration:(id)configuration toPixelBuffer:(__CVBuffer *)buffer;
- (void)dealloc;
- (void)finishCancelledRequest;
- (void)finishWithComposedTaggedBufferGroup:(OpaqueCMTaggedBufferGroup *)group;
- (void)finishWithComposedVideoFrame:(CVPixelBufferRef)composedVideoFrame;
- (void)finishWithError:(NSError *)error;
@end

@implementation AVAsynchronousVideoCompositionRequest

- (void)_willDeallocOrFinalize
{
  internal = self->_internal;
  if (internal)
  {
    if (![(AVAsynchronousVideoCompositionRequestInternal *)internal isFinished])
    {
      NSLog(&cfstr_UnfinishedAvas.isa);
      referencedObject = [(AVWeakReference *)[(AVAsynchronousVideoCompositionRequestInternal *)self->_internal session] referencedObject];
      compositionFrame = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal compositionFrame];
      [referencedObject compositionFrame:compositionFrame didFinishWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", @"AVFoundationErrorDomain", -11841, 0)}];
    }

    v6 = self->_internal;
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

- (void)dealloc
{
  [(AVAsynchronousVideoCompositionRequest *)self _willDeallocOrFinalize];

  v3.receiver = self;
  v3.super_class = AVAsynchronousVideoCompositionRequest;
  [(AVAsynchronousVideoCompositionRequest *)&v3 dealloc];
}

- (CMTime)compositionTime
{
  result = self->_internal;
  if (result)
  {
    return [(CMTime *)result compositionTime];
  }

  retstr->value = 0;
  *&retstr->timescale = 0;
  retstr->epoch = 0;
  return result;
}

- (CVPixelBufferRef)sourceFrameByTrackID:(CMPersistentTrackID)trackID
{
  v3 = *&trackID;
  sourceVideoFrameTimedSamplesByTrackID = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal sourceVideoFrameTimedSamplesByTrackID];
  result = -[NSDictionary objectForKey:](sourceVideoFrameTimedSamplesByTrackID, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInt:v3]);
  if (result)
  {
    internal = self->_internal;
    if (internal)
    {
      [(AVAsynchronousVideoCompositionRequestInternal *)internal compositionTime];
    }

    FigVCPGetTimedSampleAtTimeFromOrderedArray();
    if (FigVCPTimedSampleContainsPixelBuffer())
    {
      FigVCPTimedSampleGetPixelBuffer();
      return 0;
    }

    else if (!FigVCPTimedSampleContainsTaggedBufferGroup() || FigVCPTimedSampleGetTaggedBufferGroup())
    {
      return 0;
    }

    else
    {
      return CMTaggedBufferGroupGetCVPixelBufferAtIndex(0, 0);
    }
  }

  return result;
}

- (CMSampleBufferRef)sourceSampleBufferByTrackID:(CMPersistentTrackID)trackID
{
  v3 = *&trackID;
  sourceSampleBufferTimedSamplesByTrackID = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal sourceSampleBufferTimedSamplesByTrackID];
  result = -[NSDictionary objectForKey:](sourceSampleBufferTimedSamplesByTrackID, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInt:v3]);
  if (result)
  {
    internal = self->_internal;
    if (internal)
    {
      [(AVAsynchronousVideoCompositionRequestInternal *)internal compositionTime];
    }

    FigVCPGetTimedSampleAtTimeFromOrderedArray();
    FigVCPTimedSampleGetSampleBuffer();
    return 0;
  }

  return result;
}

- (AVTimedMetadataGroup)sourceTimedMetadataByTrackID:(CMPersistentTrackID)trackID
{
  result = [(AVAsynchronousVideoCompositionRequest *)self sourceSampleBufferByTrackID:*&trackID];
  if (result)
  {
    v4 = [[AVTimedMetadataGroup alloc] initWithSampleBuffer:result];

    return v4;
  }

  return result;
}

- (OpaqueCMTaggedBufferGroup)sourceTaggedBufferGroupByTrackID:(int)d
{
  v3 = *&d;
  sourceVideoFrameTimedSamplesByTrackID = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal sourceVideoFrameTimedSamplesByTrackID];
  result = -[NSDictionary objectForKey:](sourceVideoFrameTimedSamplesByTrackID, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInt:v3]);
  if (result)
  {
    internal = self->_internal;
    if (internal)
    {
      [(AVAsynchronousVideoCompositionRequestInternal *)internal compositionTime];
    }

    FigVCPGetTimedSampleAtTimeFromOrderedArray();
    if (FigVCPTimedSampleContainsTaggedBufferGroup())
    {
      FigVCPTimedSampleGetTaggedBufferGroup();
    }

    return 0;
  }

  return result;
}

- (void)finishWithComposedVideoFrame:(CVPixelBufferRef)composedVideoFrame
{
  if (!composedVideoFrame)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"finishWithComposedVideoFrame requires a CVPixelBuffer", v3, v4, v5, v6, v7, v13), 0}];
    objc_exception_throw(v12);
  }

  if ([(AVAsynchronousVideoCompositionRequestInternal *)self->_internal isFinished])
  {
    NSLog(&cfstr_IgnoredAvasync.isa);
  }

  else
  {
    [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal setIsFinished:1];
    referencedObject = [(AVWeakReference *)[(AVAsynchronousVideoCompositionRequestInternal *)self->_internal session] referencedObject];
    compositionFrame = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal compositionFrame];

    [referencedObject compositionFrame:compositionFrame didFinishWithComposedPixelBuffer:composedVideoFrame];
  }
}

- (void)_validateAttachedSpatialVideoConfigurationInTaggedBufferGroup:(OpaqueCMTaggedBufferGroup *)group reportingObject:(id)object reportingSelector:(SEL)selector
{
  lookupableSpatialVideoConfigurations = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal lookupableSpatialVideoConfigurations];
  Count = CMTaggedBufferGroupGetCount(group);
  v8 = [(NSArray *)lookupableSpatialVideoConfigurations count];
  if (Count < 1)
  {
    LOBYTE(v16) = 0;
    LOBYTE(v24) = 0;
    LOBYTE(v20) = 1;
    goto LABEL_29;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v36 = v8;
  key = *MEMORY[0x1E6965F28];
  v35 = v8;
  v18 = Count & 0x7FFFFFFF;
  v19 = v8 & 0x7FFFFFFF;
  v20 = 1;
  while (1)
  {
    CVPixelBufferAtIndex = CMTaggedBufferGroupGetCVPixelBufferAtIndex(group, v14);
    if (!CVPixelBufferAtIndex)
    {
      v24 = v16;
      v25 = v20;
      goto LABEL_23;
    }

    v22 = CVBufferCopyAttachment(CVPixelBufferAtIndex, key, 0);
    if (v22)
    {
      break;
    }

    v25 = (v17 == 0) & v20;
    if (v15)
    {
      LOBYTE(v20) = (v17 == 0) & v20;
      goto LABEL_21;
    }

    v15 = 0;
    v24 = v16;
LABEL_23:
    ++v14;
    v20 = v25;
    v16 = v24;
    LOBYTE(v24) = v15;
    if (v14 == v18)
    {
      goto LABEL_24;
    }
  }

  v23 = v22;
  if (v17)
  {
    LOBYTE(v20) = (FigCFEqual() != 0) & v20;
  }

  else
  {
    CFRetain(v22);
    v17 = v23;
  }

  if (v36 < 1)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    [-[NSArray objectAtIndex:](lookupableSpatialVideoConfigurations objectAtIndex:{0), "lookupID"}];
    if (FigCFEqual())
    {
      LOBYTE(v16) = 1;
    }

    else
    {
      v26 = 1;
      do
      {
        v16 = v26;
        if (v19 == v26)
        {
          break;
        }

        [-[NSArray objectAtIndex:](lookupableSpatialVideoConfigurations objectAtIndex:{v26), "lookupID"}];
        v27 = FigCFEqual();
        v26 = v16 + 1;
      }

      while (!v27);
      LOBYTE(v16) = v16 < v35;
    }
  }

  CFRelease(v23);
LABEL_21:
  v24 = 1;
  if (v20)
  {
    v15 = 1;
    v25 = 1;
    if (v16)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (v17)
  {
    CFRelease(v17);
  }

  v8 = v36;
  if (((v36 == 0) & v24) == 1)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"AVVideoComposition has empty spatialVideoConfigurations. Expect composed tagged buffers having no spatial video configuration attachments";
    goto LABEL_37;
  }

LABEL_29:
  if (v8 >= 1 && (v24 & 1) == 0)
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"AVVideoComposition has non-empty spatialVideoConfigurations. Expect each pixel buffer in composed tagged buffers to have spatial video configuration attachments. Try call AVAsynchronousVideoCompositionRequest.attach(_:to:) on each pixel buffer before calling finish(withComposedTaggedBuffers:)";
    goto LABEL_37;
  }

  if (!((v8 < 1) | v20 & 1))
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"Expect all pixel buffers in the composed tagged buffers having the same spatial video configuration attachments.";
    goto LABEL_37;
  }

  if (!((v8 < 1) | v16 & 1))
  {
    v28 = MEMORY[0x1E695DF30];
    v29 = *MEMORY[0x1E695D940];
    v30 = @"AVVideoComposition has non-empty spatialVideoConfigurations. Expect spatial video configuration attached to the pixel buffers in composed tagged buffers to equal to that from the AVVideoComposition's spatialVideoConfigurations";
LABEL_37:
    v31 = [v28 exceptionWithName:v29 reason:AVMethodExceptionReasonWithObjectAndSelector(object userInfo:{selector, v30, v9, v10, v11, v12, v13, v32), 0}];
    objc_exception_throw(v31);
  }
}

- (void)finishWithComposedTaggedBufferGroup:(OpaqueCMTaggedBufferGroup *)group
{
  if (!group)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"finishWithComposedTaggedBufferGroup requires a CMTaggedBufferGroupRef", v3, v4, v5, v6, v7, v14), 0}];
    objc_exception_throw(v13);
  }

  if ([(AVAsynchronousVideoCompositionRequestInternal *)self->_internal isFinished])
  {
    NSLog(&cfstr_IgnoredAvasync_0.isa);
  }

  else
  {
    [(AVAsynchronousVideoCompositionRequest *)self _validateAttachedSpatialVideoConfigurationInTaggedBufferGroup:group reportingObject:self reportingSelector:a2];
    [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal setIsFinished:1];
    referencedObject = [(AVWeakReference *)[(AVAsynchronousVideoCompositionRequestInternal *)self->_internal session] referencedObject];
    compositionFrame = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal compositionFrame];

    [referencedObject compositionFrame:compositionFrame didFinishWithComposedTaggedBufferGroup:group];
  }
}

- (void)attachSpatialVideoConfiguration:(id)configuration toPixelBuffer:(__CVBuffer *)buffer
{
  v30 = *MEMORY[0x1E69E9840];
  lookupableSpatialVideoConfigurations = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal lookupableSpatialVideoConfigurations];
  if (configuration)
  {
    v9 = lookupableSpatialVideoConfigurations;
    if (![(NSArray *)lookupableSpatialVideoConfigurations count])
    {
      v21 = MEMORY[0x1E695DF30];
      v22 = *MEMORY[0x1E695D940];
      v23 = @"calling attachSpatialVideoConfiguration:toPixelBuffer is illegal when AVVideoComposition's spatialVideoConfigurations is empty or nil";
LABEL_17:
      v24 = [v21 exceptionWithName:v22 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, v23, v10, v11, v12, v13, v14, v25), 0}];
      objc_exception_throw(v24);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v15 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = v15;
    v17 = *v26;
LABEL_5:
    v18 = 0;
    while (1)
    {
      if (*v26 != v17)
      {
        objc_enumerationMutation(v9);
      }

      v19 = *(*(&v25 + 1) + 8 * v18);
      if ([configuration isEqual:{objc_msgSend(v19, "spatialVideoConfiguration")}])
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [(NSArray *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (!v16)
        {
LABEL_15:
          v21 = MEMORY[0x1E695DF30];
          v22 = *MEMORY[0x1E695D940];
          v23 = @"attachSpatialVideoConfiguration:toPixelBuffer must specify a configuration in the AVVideoComposition's spatialVideoConfigurations list";
          goto LABEL_17;
        }

        goto LABEL_5;
      }
    }

    lookupID = [v19 lookupID];
    if (!lookupID)
    {
      goto LABEL_15;
    }

    CVBufferSetAttachment(buffer, *MEMORY[0x1E6965F28], lookupID, kCVAttachmentMode_ShouldPropagate);
  }
}

- (void)finishWithError:(NSError *)error
{
  if ([(AVAsynchronousVideoCompositionRequestInternal *)self->_internal isFinished])
  {
    NSLog(&cfstr_IgnoredAvasync_1.isa);
  }

  else
  {
    [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal setIsFinished:1];
    referencedObject = [(AVWeakReference *)[(AVAsynchronousVideoCompositionRequestInternal *)self->_internal session] referencedObject];
    compositionFrame = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal compositionFrame];

    [referencedObject compositionFrame:compositionFrame didFinishWithError:error];
  }
}

- (void)finishCancelledRequest
{
  if ([(AVAsynchronousVideoCompositionRequestInternal *)self->_internal isFinished])
  {
    NSLog(&cfstr_IgnoredAvasync_2.isa);
  }

  else
  {
    [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal setIsFinished:1];
    referencedObject = [(AVWeakReference *)[(AVAsynchronousVideoCompositionRequestInternal *)self->_internal session] referencedObject];
    compositionFrame = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal compositionFrame];

    [referencedObject compositionFrameDidCancel:compositionFrame];
  }
}

- (int64_t)numberOfSourceFramesInWindowForTrackID:(int)d
{
  v3 = *&d;
  sourceVideoFrameTimedSamplesByTrackID = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal sourceVideoFrameTimedSamplesByTrackID];
  v5 = -[NSDictionary objectForKey:](sourceVideoFrameTimedSamplesByTrackID, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInt:v3]);

  return [v5 count];
}

- (int64_t)numberOfSourceSampleBuffersInWindowForTrackID:(int)d
{
  v3 = *&d;
  sourceSampleBufferTimedSamplesByTrackID = [(AVAsynchronousVideoCompositionRequestInternal *)self->_internal sourceSampleBufferTimedSamplesByTrackID];
  v5 = -[NSDictionary objectForKey:](sourceSampleBufferTimedSamplesByTrackID, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInt:v3]);

  return [v5 count];
}

- (id)sourceTimedMetadataByTrackID:(int)d atIndexInWindow:(int64_t)window presentationTimeStamp:(id *)stamp
{
  result = [(AVAsynchronousVideoCompositionRequest *)self sourceSampleBufferByTrackID:*&d atIndexInWindow:window presentationTimeStamp:stamp];
  if (result)
  {
    v6 = [[AVTimedMetadataGroup alloc] initWithSampleBuffer:result];

    return v6;
  }

  return result;
}

- (id)initUsingSession:(id)session withRenderContext:(id)context compositionFrame:(OpaqueFigVideoCompositorFrame *)frame atTime:(id *)time usingSources:(id)sources instruction:(id)instruction withSampleBuffers:(id)buffers lookupableSpatialVideoConfigurations:(id)self0
{
  v47 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = AVAsynchronousVideoCompositionRequest;
  v16 = [(AVAsynchronousVideoCompositionRequest *)&v44 init];
  if (v16)
  {
    v17 = objc_alloc_init(AVAsynchronousVideoCompositionRequestInternal);
    v16->_internal = v17;
    CFRetain(v17);
    [(AVAsynchronousVideoCompositionRequestInternal *)v16->_internal setSession:[[AVWeakReference alloc] initWithReferencedObject:session]];
    [(AVAsynchronousVideoCompositionRequestInternal *)v16->_internal setRenderContext:context];
    [(AVAsynchronousVideoCompositionRequestInternal *)v16->_internal setCompositionFrame:frame];
    internal = v16->_internal;
    v42 = *&time->var0;
    var3 = time->var3;
    [(AVAsynchronousVideoCompositionRequestInternal *)internal setCompositionTime:&v42];
    [(AVAsynchronousVideoCompositionRequestInternal *)v16->_internal setSourceVideoFrameTimedSamplesByTrackID:sources];
    [(AVAsynchronousVideoCompositionRequestInternal *)v16->_internal setSourceSampleBufferTimedSamplesByTrackID:buffers];
    [(AVAsynchronousVideoCompositionRequestInternal *)v16->_internal setInstruction:instruction];
    [(AVAsynchronousVideoCompositionRequestInternal *)v16->_internal setLookupableSpatialVideoConfigurations:configurations];
    if ([instruction requiredSourceTrackIDs])
    {
      allKeys = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(instruction, "requiredSourceTrackIDs"), "count")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      requiredSourceTrackIDs = [instruction requiredSourceTrackIDs];
      v21 = [requiredSourceTrackIDs countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v39;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v39 != v23)
            {
              objc_enumerationMutation(requiredSourceTrackIDs);
            }

            v25 = *(*(&v38 + 1) + 8 * i);
            if ([sources objectForKey:v25])
            {
              [allKeys addObject:v25];
            }
          }

          v22 = [requiredSourceTrackIDs countByEnumeratingWithState:&v38 objects:v46 count:16];
        }

        while (v22);
      }
    }

    else
    {
      allKeys = [sources allKeys];
    }

    [(AVAsynchronousVideoCompositionRequestInternal *)v16->_internal setSourceTrackIDsInClientOrder:allKeys];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [instruction requiredSourceSampleDataTrackIDs])
    {
      allKeys2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(instruction, "requiredSourceSampleDataTrackIDs"), "count")}];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      requiredSourceSampleDataTrackIDs = [instruction requiredSourceSampleDataTrackIDs];
      v28 = [requiredSourceSampleDataTrackIDs countByEnumeratingWithState:&v34 objects:v45 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v35;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(requiredSourceSampleDataTrackIDs);
            }

            v32 = *(*(&v34 + 1) + 8 * j);
            if ([buffers objectForKey:v32])
            {
              [allKeys2 addObject:v32];
            }
          }

          v29 = [requiredSourceSampleDataTrackIDs countByEnumeratingWithState:&v34 objects:v45 count:16];
        }

        while (v29);
      }
    }

    else
    {
      allKeys2 = [buffers allKeys];
    }

    [(AVAsynchronousVideoCompositionRequestInternal *)v16->_internal setSourceSampleBufferTrackIDsInClientOrder:allKeys2];
  }

  return v16;
}

@end