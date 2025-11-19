@interface MPNowPlayingContentItemRemoteArtwork
- (BOOL)isEqual:(id)a3;
- (MPNowPlayingContentItemRemoteArtwork)initWithArtworkURLString:(id)a3 templateData:(id)a4;
- (MPNowPlayingContentItemRemoteArtwork)initWithMediaRemoteRemoteArtwork:(id)a3;
- (unint64_t)hash;
@end

@implementation MPNowPlayingContentItemRemoteArtwork

- (MPNowPlayingContentItemRemoteArtwork)initWithMediaRemoteRemoteArtwork:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MPNowPlayingContentItemRemoteArtwork;
  v6 = [(MPNowPlayingContentItemRemoteArtwork *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaRemoteRemoteArtwork, a3);
  }

  return v7;
}

- (unint64_t)hash
{
  v95[18] = *MEMORY[0x1E69E9840];
  v3 = MSVHasherSharedSeed();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v4 = v3 ^ 0x736F6D6570736575;
  v80 = v3 ^ 0x736F6D6570736575;
  v6 = v5 ^ 0x646F72616E646F6DLL;
  v7 = v3 ^ 0x6C7967656E657261;
  v81 = v5 ^ 0x646F72616E646F6DLL;
  v82 = v3 ^ 0x6C7967656E657261;
  v8 = v5 ^ 0x7465646279746573;
  v83 = v5 ^ 0x7465646279746573;
  v9 = [(MPNowPlayingContentItemRemoteArtwork *)self artworkURLString];
  v10 = [v9 UTF8String];
  v11 = [v9 length];
  if (v11 >= 8)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v13 = *v10++;
      v14 = (v4 + v6) ^ __ROR8__(v6, 51);
      v15 = v7 + (v8 ^ v13);
      v16 = __ROR8__(v8 ^ v13, 48);
      v17 = (v15 ^ v16) + __ROR8__(v4 + v6, 32);
      v8 = v17 ^ __ROR8__(v15 ^ v16, 43);
      v6 = (v15 + v14) ^ __ROR8__(v14, 47);
      v7 = __ROR8__(v15 + v14, 32);
      v82 = v7;
      v83 = v8;
      v4 = v17 ^ v13;
      v80 = v17 ^ v13;
      v81 = v6;
      v11 -= 8;
    }

    while (v11 > 7);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_9:
    v22 = v12 << 56;
    goto LABEL_10;
  }

  v12 = 0;
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_5:
  v18 = 0;
  v19 = 0;
  v20 = v11;
  do
  {
    v21 = *v10;
    v10 = (v10 + 1);
    v19 |= v21 << v18;
    v18 += 8;
    --v20;
  }

  while (v20);
  v22 = v19 | ((v11 | v12) << 56);
LABEL_10:
  *&v84 = v22;

  v23 = [(MPNowPlayingContentItemRemoteArtwork *)self artworkURLTemplateData];
  v24 = [v23 bytes];
  v25 = [v23 length];
  v26 = HIBYTE(v22);
  v27 = HIBYTE(v22) & 7;
  if (v27)
  {
    v28 = 8 - v27;
    v29 = v25 - (8 - v27);
    if (v25 < 8 - v27)
    {
      goto LABEL_18;
    }

    v30 = 8 * v27;
    v31 = v24;
    v32 = v22 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v33 = *v31++;
      v32 |= v33 << v30;
      v30 += 8;
    }

    while (v30 != 64);
    v34 = (v4 + v6) ^ __ROR8__(v6, 51);
    v35 = v7 + (v8 ^ v32);
    v36 = __ROR8__(v8 ^ v32, 48);
    v37 = (v35 ^ v36) + __ROR8__(v4 + v6, 32);
    v8 = v37 ^ __ROR8__(v35 ^ v36, 43);
    v6 = (v35 + v34) ^ __ROR8__(v34, 47);
    v7 = __ROR8__(v35 + v34, 32);
    v82 = v7;
    v83 = v8;
    v4 = v37 ^ v32;
    v80 = v37 ^ v32;
    v81 = v6;
    v24 = (v24 + v28);
    *&v84 = (v28 + v26) << 56;
    v25 = v29;
  }

  if (v25 >= 8)
  {
    do
    {
      v38 = *v24++;
      v39 = (v4 + v6) ^ __ROR8__(v6, 51);
      v40 = v7 + (v8 ^ v38);
      v41 = __ROR8__(v8 ^ v38, 48);
      v42 = (v40 ^ v41) + __ROR8__(v4 + v6, 32);
      v8 = v42 ^ __ROR8__(v40 ^ v41, 43);
      v6 = (v40 + v39) ^ __ROR8__(v39, 47);
      v7 = __ROR8__(v40 + v39, 32);
      v82 = v7;
      v83 = v8;
      v4 = v42 ^ v38;
      v80 = v42 ^ v38;
      v81 = v6;
      v25 -= 8;
      v26 += 8;
    }

    while (v25 > 7);
  }

  v27 = 0;
LABEL_18:
  if (v25)
  {
    v43 = 0;
    v44 = 0;
    v45 = v25;
    do
    {
      v46 = *v24;
      v24 = (v24 + 1);
      v44 |= v46 << v43;
      v43 += 8;
      --v45;
    }

    while (v45);
    v47 = v44 | ((v25 + v26) << 56);
    v48 = (v44 << (8 * v27)) | ((v25 + v26) << 56) | v22 & 0xFFFFFFFFFFFFFFLL;
    if (!v27)
    {
      v48 = v47;
    }
  }

  else
  {
    if (v27)
    {
      goto LABEL_25;
    }

    v48 = v26 << 56;
  }

  *&v84 = v48;
LABEL_25:

  memset(&v95[1], 0, 64);
  v95[0] = 1000;
  v49 = (v80 + v81) ^ __ROR8__(v81, 51);
  v50 = v82 + (v83 ^ v84);
  v51 = __ROR8__(v83 ^ v84, 48);
  v52 = (v50 ^ v51) + __ROR8__(v80 + v81, 32);
  v53 = v52 ^ __ROR8__(v50 ^ v51, 43);
  v54 = v50 + v49;
  v55 = v54 ^ __ROR8__(v49, 47);
  v56 = (v52 ^ v84) + v55;
  v57 = v56 ^ __ROR8__(v55, 51);
  v58 = (__ROR8__(v54, 32) ^ 0xFFLL) + v53;
  v59 = __ROR8__(v53, 48);
  v60 = __ROR8__(v56, 32) + (v58 ^ v59);
  v61 = v60 ^ __ROR8__(v58 ^ v59, 43);
  v62 = v57 + v58;
  v63 = v62 ^ __ROR8__(v57, 47);
  v64 = v63 + v60;
  v65 = v64 ^ __ROR8__(v63, 51);
  v66 = __ROR8__(v62, 32) + v61;
  v67 = __ROR8__(v61, 48);
  v68 = __ROR8__(v64, 32) + (v66 ^ v67);
  v69 = v68 ^ __ROR8__(v66 ^ v67, 43);
  v70 = v65 + v66;
  v71 = v70 ^ __ROR8__(v65, 47);
  v72 = v71 + v68;
  v73 = v72 ^ __ROR8__(v71, 51);
  v74 = __ROR8__(v70, 32) + v69;
  v75 = __ROR8__(v69, 48);
  v76 = __ROR8__(v72, 32) + (v74 ^ v75);
  v77 = v76 ^ __ROR8__(v74 ^ v75, 43);
  v78 = v73 + v74;
  v80 = v76;
  v82 = __ROR8__(v78, 32);
  v83 = v77;
  v95[1] = v78 ^ __ROR8__(v73, 47) ^ v76 ^ v82 ^ v77;
  *&v95[9] = *v95;
  *&v95[11] = *&v95[2];
  *&v95[13] = *&v95[4];
  *&v95[15] = *&v95[6];
  v95[17] = 0;
  return v95[1];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MPNowPlayingContentItemRemoteArtwork *)self artworkURLString];
      v7 = [(MPNowPlayingContentItemRemoteArtwork *)v5 artworkURLString];
      if (v6 == v7 || [v6 isEqual:v7])
      {
        v8 = [(MPNowPlayingContentItemRemoteArtwork *)self artworkURLTemplateData];
        v9 = [(MPNowPlayingContentItemRemoteArtwork *)v5 artworkURLTemplateData];
        if (v8 == v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = [v8 isEqual:v9];
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (MPNowPlayingContentItemRemoteArtwork)initWithArtworkURLString:(id)a3 templateData:(id)a4
{
  v6 = MEMORY[0x1E69B0AD8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithArtworkURLString:v8 templateData:v7];

  v10 = [(MPNowPlayingContentItemRemoteArtwork *)self initWithMediaRemoteRemoteArtwork:v9];
  return v10;
}

@end