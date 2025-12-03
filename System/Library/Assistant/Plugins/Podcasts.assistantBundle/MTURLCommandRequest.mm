@interface MTURLCommandRequest
- (MTURLCommandRequest)initWithURLString:(id)string;
- (id)copyWithPlayReason:(unint64_t)reason;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_loadQueryParameterValuesFromString:(id)string;
@end

@implementation MTURLCommandRequest

- (MTURLCommandRequest)initWithURLString:(id)string
{
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = MTURLCommandRequest;
  v6 = [(MTURLCommandRequest *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_urlString, string);
    objc_msgSend__loadQueryParameterValuesFromString_(v7, v8, stringCopy, v9, v10);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  v9 = objc_msgSend_copy(self->_urlString, v5, v6, v7, v8);
  v10 = v4[1];
  v4[1] = v9;

  v4[2] = self->_commandType;
  v4[3] = self->_playQueueType;
  v4[4] = self->_playReason;
  v4[5] = self->_playbackOrder;
  v4[6] = self->_playContext;
  v4[7] = self->_playContextSortType;
  v15 = objc_msgSend_copy(self->_podcastUuid, v11, v12, v13, v14);
  v16 = v4[8];
  v4[8] = v15;

  v21 = objc_msgSend_copy(self->_podcastFeedUrl, v17, v18, v19, v20);
  v22 = v4[9];
  v4[9] = v21;

  v27 = objc_msgSend_copy(self->_episodeUuid, v23, v24, v25, v26);
  v28 = v4[10];
  v4[10] = v27;

  v33 = objc_msgSend_copy(self->_podcastAdamId, v29, v30, v31, v32);
  v34 = v4[11];
  v4[11] = v33;

  v39 = objc_msgSend_copy(self->_episodeAdamId, v35, v36, v37, v38);
  v40 = v4[12];
  v4[12] = v39;

  v45 = objc_msgSend_copy(self->_stationUuid, v41, v42, v43, v44);
  v46 = v4[13];
  v4[13] = v45;

  v51 = objc_msgSend_copy(self->_requesterDsid, v47, v48, v49, v50);
  v52 = v4[14];
  v4[14] = v51;

  return v4;
}

- (id)copyWithPlayReason:(unint64_t)reason
{
  result = objc_msgSend_copy(self, a2, reason, v3, v4);
  *(result + 4) = reason;
  return result;
}

- (void)_loadQueryParameterValuesFromString:(id)string
{
  stringCopy = string;
  v7 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v4, stringCopy, v5, v6);
  v12 = objc_msgSend_query(v7, v8, v9, v10, v11);
  v16 = objc_msgSend___queryStringToQueryDictionary_(MTPlaybackIdentifierUtil, v13, v12, v14, v15);

  v21 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v17, v18, v19, v20);
  isSubscribeCommandURLString = objc_msgSend_isSubscribeCommandURLString_(v21, v22, stringCopy, v23, v24);

  if (isSubscribeCommandURLString)
  {
    v30 = 1;
  }

  else
  {
    v31 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v26, v27, v28, v29);
    isLocalSetPlaybackQueueURLString = objc_msgSend_isLocalSetPlaybackQueueURLString_(v31, v32, stringCopy, v33, v34);

    if (isLocalSetPlaybackQueueURLString)
    {
      v30 = 2;
    }

    else
    {
      v36 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v26, v27, v28, v29);
      isUniversalPlaybackIdentifierURLString = objc_msgSend_isUniversalPlaybackIdentifierURLString_(v36, v37, stringCopy, v38, v39);

      if (!isUniversalPlaybackIdentifierURLString)
      {
        goto LABEL_8;
      }

      v30 = 3;
    }
  }

  self->_commandType = v30;
LABEL_8:
  v41 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v26, v27, v28, v29);
  self->_playQueueType = objc_msgSend__playQueueTypeForRequestURL_(v41, v42, v7, v43, v44);

  v49 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v45, v46, v47, v48);
  v53 = objc_msgSend_objectForKeyedSubscript_(v16, v50, @"playbackOrder", v51, v52);
  self->_playbackOrder = objc_msgSend__episodeOrderFromString_(v49, v54, v53, v55, v56);

  v61 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v57, v58, v59, v60);
  v65 = objc_msgSend_objectForKeyedSubscript_(v16, v62, @"playReason", v63, v64);
  self->_playReason = objc_msgSend__playReasonFromString_(v61, v66, v65, v67, v68);

  v73 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v69, v70, v71, v72);
  v77 = objc_msgSend_objectForKeyedSubscript_(v16, v74, @"context", v75, v76);
  self->_playContext = objc_msgSend__episodeContextFromString_(v73, v78, v77, v79, v80);

  v85 = objc_msgSend_sharedInstance(MTPlaybackIdentifierUtil, v81, v82, v83, v84);
  v89 = objc_msgSend_objectForKeyedSubscript_(v16, v86, @"contextSortType", v87, v88);
  self->_playContextSortType = objc_msgSend__episodeContextSortFromString_(v85, v90, v89, v91, v92);

  playQueueType = self->_playQueueType;
  if (playQueueType == 3)
  {
    v110 = objc_msgSend_objectForKeyedSubscript_(v16, v93, @"uuid", v94, v95);
    stationUuid = self->_stationUuid;
    self->_stationUuid = v110;

    v115 = objc_msgSend_objectForKeyedSubscript_(v16, v112, @"episodeUuid", v113, v114);
    episodeUuid = self->_episodeUuid;
    self->_episodeUuid = v115;
  }

  else
  {
    if (playQueueType != 2)
    {
      goto LABEL_13;
    }

    v97 = objc_msgSend_objectForKeyedSubscript_(v16, v93, @"uuid", v94, v95);
    podcastUuid = self->_podcastUuid;
    self->_podcastUuid = v97;

    v102 = objc_msgSend_objectForKeyedSubscript_(v16, v99, @"episodeUuid", v100, v101);
    v103 = self->_episodeUuid;
    self->_episodeUuid = v102;

    objc_msgSend__lookupPodcastUuidIfNecessaryFromURLString_(self, v104, stringCopy, v105, v106);
  }

  objc_msgSend__lookupEpisodeUuidIfNecessaryFromURLString_(self, v107, stringCopy, v108, v109);
LABEL_13:
  v117 = objc_msgSend_objectForKeyedSubscript_(v16, v93, @"storeCollectionId", v94, v95);
  podcastAdamId = self->_podcastAdamId;
  self->_podcastAdamId = v117;

  v122 = objc_msgSend_objectForKeyedSubscript_(v16, v119, @"storeTrackId", v120, v121);
  episodeAdamId = self->_episodeAdamId;
  self->_episodeAdamId = v122;

  v127 = objc_msgSend_objectForKeyedSubscript_(v16, v124, @"podcastFeedUrl", v125, v126);
  v131 = objc_msgSend___stringByRemovingPercentEscapes_(MTPlaybackIdentifierUtil, v128, v127, v129, v130);

  v135 = objc_msgSend___stringByRemovingPercentEscapes_(MTPlaybackIdentifierUtil, v132, v131, v133, v134);
  podcastFeedUrl = self->_podcastFeedUrl;
  self->_podcastFeedUrl = v135;

  v140 = objc_msgSend_objectForKeyedSubscript_(v16, v137, @"enqueuerDSID", v138, v139);
  requesterDsid = self->_requesterDsid;
  self->_requesterDsid = v140;
}

@end