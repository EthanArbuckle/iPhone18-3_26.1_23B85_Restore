@interface MTRChannelClusterProgramStruct
- (MTRChannelClusterProgramStruct)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MTRChannelClusterProgramStruct

- (MTRChannelClusterProgramStruct)init
{
  v25.receiver = self;
  v25.super_class = MTRChannelClusterProgramStruct;
  v2 = [(MTRChannelClusterProgramStruct *)&v25 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = &stru_284BD0DD8;

    v5 = objc_opt_new();
    channel = v3->_channel;
    v3->_channel = v5;

    startTime = v3->_startTime;
    v3->_startTime = &unk_284C3E588;

    endTime = v3->_endTime;
    v3->_endTime = &unk_284C3E588;

    title = v3->_title;
    v3->_title = &stru_284BD0DD8;

    subtitle = v3->_subtitle;
    v3->_subtitle = 0;

    descriptionString = v3->_descriptionString;
    v3->_descriptionString = 0;

    audioLanguages = v3->_audioLanguages;
    v3->_audioLanguages = 0;

    ratings = v3->_ratings;
    v3->_ratings = 0;

    thumbnailUrl = v3->_thumbnailUrl;
    v3->_thumbnailUrl = 0;

    posterArtUrl = v3->_posterArtUrl;
    v3->_posterArtUrl = 0;

    dvbiUrl = v3->_dvbiUrl;
    v3->_dvbiUrl = 0;

    releaseDate = v3->_releaseDate;
    v3->_releaseDate = 0;

    parentalGuidanceText = v3->_parentalGuidanceText;
    v3->_parentalGuidanceText = 0;

    recordingFlag = v3->_recordingFlag;
    v3->_recordingFlag = 0;

    seriesInfo = v3->_seriesInfo;
    v3->_seriesInfo = 0;

    categoryList = v3->_categoryList;
    v3->_categoryList = 0;

    castList = v3->_castList;
    v3->_castList = 0;

    externalIDList = v3->_externalIDList;
    v3->_externalIDList = 0;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTRChannelClusterProgramStruct);
  v5 = [(MTRChannelClusterProgramStruct *)self identifier];
  [(MTRChannelClusterProgramStruct *)v4 setIdentifier:v5];

  v6 = [(MTRChannelClusterProgramStruct *)self channel];
  [(MTRChannelClusterProgramStruct *)v4 setChannel:v6];

  v7 = [(MTRChannelClusterProgramStruct *)self startTime];
  [(MTRChannelClusterProgramStruct *)v4 setStartTime:v7];

  v8 = [(MTRChannelClusterProgramStruct *)self endTime];
  [(MTRChannelClusterProgramStruct *)v4 setEndTime:v8];

  v9 = [(MTRChannelClusterProgramStruct *)self title];
  [(MTRChannelClusterProgramStruct *)v4 setTitle:v9];

  v10 = [(MTRChannelClusterProgramStruct *)self subtitle];
  [(MTRChannelClusterProgramStruct *)v4 setSubtitle:v10];

  v11 = [(MTRChannelClusterProgramStruct *)self descriptionString];
  [(MTRChannelClusterProgramStruct *)v4 setDescriptionString:v11];

  v12 = [(MTRChannelClusterProgramStruct *)self audioLanguages];
  [(MTRChannelClusterProgramStruct *)v4 setAudioLanguages:v12];

  v13 = [(MTRChannelClusterProgramStruct *)self ratings];
  [(MTRChannelClusterProgramStruct *)v4 setRatings:v13];

  v14 = [(MTRChannelClusterProgramStruct *)self thumbnailUrl];
  [(MTRChannelClusterProgramStruct *)v4 setThumbnailUrl:v14];

  v15 = [(MTRChannelClusterProgramStruct *)self posterArtUrl];
  [(MTRChannelClusterProgramStruct *)v4 setPosterArtUrl:v15];

  v16 = [(MTRChannelClusterProgramStruct *)self dvbiUrl];
  [(MTRChannelClusterProgramStruct *)v4 setDvbiUrl:v16];

  v17 = [(MTRChannelClusterProgramStruct *)self releaseDate];
  [(MTRChannelClusterProgramStruct *)v4 setReleaseDate:v17];

  v18 = [(MTRChannelClusterProgramStruct *)self parentalGuidanceText];
  [(MTRChannelClusterProgramStruct *)v4 setParentalGuidanceText:v18];

  v19 = [(MTRChannelClusterProgramStruct *)self recordingFlag];
  [(MTRChannelClusterProgramStruct *)v4 setRecordingFlag:v19];

  v20 = [(MTRChannelClusterProgramStruct *)self seriesInfo];
  [(MTRChannelClusterProgramStruct *)v4 setSeriesInfo:v20];

  v21 = [(MTRChannelClusterProgramStruct *)self categoryList];
  [(MTRChannelClusterProgramStruct *)v4 setCategoryList:v21];

  v22 = [(MTRChannelClusterProgramStruct *)self castList];
  [(MTRChannelClusterProgramStruct *)v4 setCastList:v22];

  v23 = [(MTRChannelClusterProgramStruct *)self externalIDList];
  [(MTRChannelClusterProgramStruct *)v4 setExternalIDList:v23];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: identifier:%@ channel:%@; startTime:%@; endTime:%@; title:%@; subtitle:%@; descriptionString:%@; audioLanguages:%@; ratings:%@; thumbnailUrl:%@; posterArtUrl:%@; dvbiUrl:%@; releaseDate:%@; parentalGuidanceText:%@; recordingFlag:%@; seriesInfo:%@; categoryList:%@; castList:%@; externalIDList:%@; >", v5, self->_identifier, self->_channel, self->_startTime, self->_endTime, self->_title, self->_subtitle, self->_descriptionString, self->_audioLanguages, self->_ratings, self->_thumbnailUrl, self->_posterArtUrl, self->_dvbiUrl, self->_releaseDate, self->_parentalGuidanceText, self->_recordingFlag, self->_seriesInfo, self->_categoryList, self->_castList, self->_externalIDList];;

  return v6;
}

@end