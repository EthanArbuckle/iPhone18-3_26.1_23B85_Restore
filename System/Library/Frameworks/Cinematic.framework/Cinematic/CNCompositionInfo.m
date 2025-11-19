@interface CNCompositionInfo
- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofCinematicAssetInfo:(CNAssetInfo *)assetInfo atTime:(CMTime *)startTime error:(NSError *)outError;
@end

@implementation CNCompositionInfo

- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofCinematicAssetInfo:(CNAssetInfo *)assetInfo atTime:(CMTime *)startTime error:(NSError *)outError
{
  v10 = assetInfo;
  v11 = [(CNAssetInfo *)self cinematicVideoTrack];
  v12 = [(CNAssetInfo *)v10 cinematicVideoTrack];
  v34 = 0;
  v13 = *&timeRange->start.epoch;
  v31 = *&timeRange->start.value;
  v32 = v13;
  v33 = *&timeRange->duration.timescale;
  v30 = *startTime;
  [v11 insertTimeRange:&v31 ofTrack:v12 atTime:&v30 error:&v34];
  v14 = v34;

  if (!v14)
  {
    v17 = [(CNAssetInfo *)self cinematicDisparityTrack];
    v18 = [(CNAssetInfo *)v10 cinematicDisparityTrack];
    v29 = 0;
    v19 = *&timeRange->start.epoch;
    v31 = *&timeRange->start.value;
    v32 = v19;
    v33 = *&timeRange->duration.timescale;
    v30 = *startTime;
    [v17 insertTimeRange:&v31 ofTrack:v18 atTime:&v30 error:&v29];
    v14 = v29;

    if (!v14)
    {
      v20 = [(CNAssetInfo *)self cinematicMetadataTrack];
      v21 = [(CNAssetInfo *)v10 cinematicMetadataTrack];
      v28 = 0;
      v22 = *&timeRange->start.epoch;
      v31 = *&timeRange->start.value;
      v32 = v22;
      v33 = *&timeRange->duration.timescale;
      v30 = *startTime;
      [v20 insertTimeRange:&v31 ofTrack:v21 atTime:&v30 error:&v28];
      v14 = v28;

      if (!v14)
      {
        v16 = 1;
        goto LABEL_9;
      }

      v23 = [(CNAssetInfo *)self cinematicDisparityTrack];
      v24 = *&timeRange->start.epoch;
      v31 = *&timeRange->start.value;
      v32 = v24;
      v33 = *&timeRange->duration.timescale;
      [v23 removeTimeRange:&v31];
    }

    v25 = [(CNAssetInfo *)self cinematicVideoTrack];
    v26 = *&timeRange->start.epoch;
    v31 = *&timeRange->start.value;
    v32 = v26;
    v33 = *&timeRange->duration.timescale;
    [v25 removeTimeRange:&v31];

    if (outError)
    {
      goto LABEL_3;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (!outError)
  {
    goto LABEL_8;
  }

LABEL_3:
  v15 = v14;
  v16 = 0;
  *outError = v14;
LABEL_9:

  return v16;
}

@end