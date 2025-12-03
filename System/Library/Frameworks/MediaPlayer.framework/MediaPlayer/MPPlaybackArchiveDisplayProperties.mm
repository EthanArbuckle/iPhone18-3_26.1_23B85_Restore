@interface MPPlaybackArchiveDisplayProperties
- (BOOL)isEqual:(id)equal;
- (MPPlaybackArchiveDisplayProperties)initWithBlock:(id)block;
- (MPPlaybackArchiveDisplayProperties)initWithCoder:(id)coder;
- (MPPlaybackArchiveDisplayProperties)initWithTitle:(id)title subtitle:(id)subtitle artworkImageData:(id)data;
- (NSString)description;
- (NSURL)artworkImageURL;
- (id)copyWithOptions:(unint64_t)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setArtworkImageData:(id)data;
- (void)setArtworkImageURL:(id)l;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation MPPlaybackArchiveDisplayProperties

- (void)setArtworkImageURL:(id)l
{
  lCopy = l;
  v8 = lCopy;
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchiveDisplayProperties.m" lineNumber:155 description:@"Attempt to mutate after finalization."];

    lCopy = v8;
  }

  absoluteString = [lCopy absoluteString];
  [(NSMutableDictionary *)self->_storage setObject:absoluteString forKeyedSubscript:@"artworkImageURL"];
}

- (void)setArtworkImageData:(id)data
{
  dataCopy = data;
  v9 = dataCopy;
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchiveDisplayProperties.m" lineNumber:150 description:@"Attempt to mutate after finalization."];

    dataCopy = v9;
  }

  v6 = [dataCopy copy];
  artworkImageData = self->_artworkImageData;
  self->_artworkImageData = v6;
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v9 = subtitleCopy;
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchiveDisplayProperties.m" lineNumber:145 description:@"Attempt to mutate after finalization."];

    subtitleCopy = v9;
  }

  v6 = [subtitleCopy copy];
  subtitle = self->_subtitle;
  self->_subtitle = v6;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v9 = titleCopy;
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchiveDisplayProperties.m" lineNumber:140 description:@"Attempt to mutate after finalization."];

    titleCopy = v9;
  }

  v6 = [titleCopy copy];
  title = self->_title;
  self->_title = v6;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_artworkImageData forKey:@"artworkImageData"];
  [coderCopy encodeObject:self->_storage forKey:@"storage"];
}

- (MPPlaybackArchiveDisplayProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = MPPlaybackArchiveDisplayProperties;
  v5 = [(MPPlaybackArchiveDisplayProperties *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artworkImageData"];
    artworkImageData = v5->_artworkImageData;
    v5->_artworkImageData = v10;

    v12 = [coderCopy decodePropertyListForKey:@"storage"];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      dictionary = v13;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    storage = v5->_storage;
    v5->_storage = dictionary;

    v5->_final = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v4 = v3 ^ 0x736F6D6570736575;
  v179 = v3 ^ 0x736F6D6570736575;
  v6 = v5 ^ 0x646F72616E646F6DLL;
  v7 = v3 ^ 0x6C7967656E657261;
  v181 = v5 ^ 0x646F72616E646F6DLL;
  v183 = v3 ^ 0x6C7967656E657261;
  v8 = v5 ^ 0x7465646279746573;
  v185 = v5 ^ 0x7465646279746573;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  uTF8String = [v10 UTF8String];
  v12 = [v10 length];
  if (v12 >= 8)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v14 = *uTF8String++;
      v15 = (v4 + v6) ^ __ROR8__(v6, 51);
      v16 = v7 + (v8 ^ v14);
      v17 = __ROR8__(v8 ^ v14, 48);
      v18 = (v16 ^ v17) + __ROR8__(v4 + v6, 32);
      v8 = v18 ^ __ROR8__(v16 ^ v17, 43);
      v6 = (v16 + v15) ^ __ROR8__(v15, 47);
      v7 = __ROR8__(v16 + v15, 32);
      v183 = v7;
      v185 = v8;
      v4 = v18 ^ v14;
      v179 = v18 ^ v14;
      v181 = v6;
      v12 -= 8;
    }

    while (v12 > 7);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_9:
    v23 = v13 << 56;
    goto LABEL_10;
  }

  v13 = 0;
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_5:
  v19 = 0;
  v20 = 0;
  v21 = v12;
  do
  {
    v22 = *uTF8String;
    uTF8String = (uTF8String + 1);
    v20 |= v22 << v19;
    v19 += 8;
    --v21;
  }

  while (v21);
  v23 = v20 | ((v12 | v13) << 56);
LABEL_10:
  v187 = v23;

  v24 = self->_title;
  uTF8String2 = [(NSString *)v24 UTF8String];
  v26 = [(NSString *)v24 length];
  v27 = HIBYTE(v23);
  v28 = HIBYTE(v23) & 7;
  if (v28)
  {
    v29 = 8 - v28;
    v30 = v26 - (8 - v28);
    if (v26 < 8 - v28)
    {
      goto LABEL_18;
    }

    v31 = 8 * v28;
    v32 = uTF8String2;
    v33 = v23 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v34 = *v32++;
      v33 |= v34 << v31;
      v31 += 8;
    }

    while (v31 != 64);
    v35 = (v4 + v6) ^ __ROR8__(v6, 51);
    v36 = v7 + (v8 ^ v33);
    v37 = __ROR8__(v8 ^ v33, 48);
    v38 = (v36 ^ v37) + __ROR8__(v4 + v6, 32);
    v8 = v38 ^ __ROR8__(v36 ^ v37, 43);
    v6 = (v36 + v35) ^ __ROR8__(v35, 47);
    v7 = __ROR8__(v36 + v35, 32);
    v183 = v7;
    v185 = v8;
    v4 = v38 ^ v33;
    v179 = v38 ^ v33;
    v181 = v6;
    uTF8String2 += v29;
    v187 = (v29 + v27) << 56;
    v26 = v30;
  }

  if (v26 >= 8)
  {
    do
    {
      v39 = *uTF8String2;
      uTF8String2 += 8;
      v40 = (v4 + v6) ^ __ROR8__(v6, 51);
      v41 = v7 + (v8 ^ v39);
      v42 = __ROR8__(v8 ^ v39, 48);
      v43 = (v41 ^ v42) + __ROR8__(v4 + v6, 32);
      v8 = v43 ^ __ROR8__(v41 ^ v42, 43);
      v6 = (v41 + v40) ^ __ROR8__(v40, 47);
      v7 = __ROR8__(v41 + v40, 32);
      v183 = v7;
      v185 = v8;
      v4 = v43 ^ v39;
      v179 = v43 ^ v39;
      v181 = v6;
      v26 -= 8;
      v27 += 8;
    }

    while (v26 > 7);
  }

  v28 = 0;
LABEL_18:
  if (v26)
  {
    v44 = 0;
    v45 = 0;
    v46 = v26;
    do
    {
      v47 = *uTF8String2++;
      v45 |= v47 << v44;
      v44 += 8;
      --v46;
    }

    while (v46);
    v48 = v45 | ((v26 + v27) << 56);
    v49 = (v45 << (8 * v28)) | ((v26 + v27) << 56) | v23 & 0xFFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v49 = v48;
    }

    goto LABEL_23;
  }

  if (!v28)
  {
    v49 = v27 << 56;
LABEL_23:
    v187 = v49;
  }

  v50 = self->_subtitle;
  uTF8String3 = [(NSString *)v50 UTF8String];
  v52 = [(NSString *)v50 length];
  v53 = v52;
  v54 = HIBYTE(v187);
  v55 = v187 & 0xFFFFFFFFFFFFFFLL;
  v56 = HIBYTE(v187) & 7;
  if (v56)
  {
    v57 = 8 - v56;
    v58 = v52 - (8 - v56);
    if (v52 < 8 - v56)
    {
      goto LABEL_34;
    }

    v59 = 8 * v56;
    v60 = uTF8String3;
    v61 = v187 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v62 = *v60++;
      v61 |= v62 << v59;
      v59 += 8;
    }

    while (v59 != 64);
    v63 = (v179 + v181) ^ __ROR8__(v181, 51);
    v64 = v183 + (v185 ^ v61);
    v65 = __ROR8__(v185 ^ v61, 48);
    v66 = (v64 ^ v65) + __ROR8__(v179 + v181, 32);
    v67 = v66 ^ __ROR8__(v64 ^ v65, 43);
    v68 = v64 + v63;
    v183 = __ROR8__(v68, 32);
    v185 = v67;
    v179 = v66 ^ v61;
    v181 = v68 ^ __ROR8__(v63, 47);
    uTF8String3 += v57;
    v187 = (v57 + v54) << 56;
    v53 = v58;
  }

  if (v53 >= 8)
  {
    v69 = v179;
    v72 = v183;
    v70 = v181;
    v71 = v185;
    do
    {
      v73 = *uTF8String3;
      uTF8String3 += 8;
      v74 = v71 ^ v73;
      v75 = v69 + v70;
      v76 = v75 ^ __ROR8__(v70, 51);
      v77 = v72 + v74;
      v78 = __ROR8__(v74, 48);
      v79 = (v77 ^ v78) + __ROR8__(v75, 32);
      v71 = v79 ^ __ROR8__(v77 ^ v78, 43);
      v80 = v77 + v76;
      v70 = v80 ^ __ROR8__(v76, 47);
      v72 = __ROR8__(v80, 32);
      v183 = v72;
      v185 = v71;
      v69 = v79 ^ v73;
      v179 = v69;
      v181 = v70;
      v53 -= 8;
      v54 += 8;
    }

    while (v53 > 7);
  }

  v56 = 0;
LABEL_34:
  if (v53)
  {
    v81 = 0;
    v82 = 0;
    v83 = v53;
    do
    {
      v84 = *uTF8String3++;
      v82 |= v84 << v81;
      v81 += 8;
      --v83;
    }

    while (v83);
    if (v56)
    {
      v85 = (v82 << (8 * v56)) | ((v53 + v54) << 56) | v55;
    }

    else
    {
      v85 = v82 | ((v53 + v54) << 56);
    }
  }

  else
  {
    if (v56)
    {
      goto LABEL_44;
    }

    v85 = v54 << 56;
  }

  v187 = v85;
LABEL_44:

  v86 = self->_artworkImageData;
  bytes = [(NSData *)v86 bytes];
  v88 = [(NSData *)v86 length];
  v89 = v88;
  v90 = HIBYTE(v187);
  v91 = v187 & 0xFFFFFFFFFFFFFFLL;
  v92 = HIBYTE(v187) & 7;
  if (v92)
  {
    v93 = 8 - v92;
    v94 = v88 - (8 - v92);
    if (v88 < 8 - v92)
    {
      goto LABEL_53;
    }

    v95 = 8 * v92;
    v96 = bytes;
    v97 = v187 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v98 = *v96++;
      v97 |= v98 << v95;
      v95 += 8;
    }

    while (v95 != 64);
    v99 = (v179 + v181) ^ __ROR8__(v181, 51);
    v100 = v183 + (v185 ^ v97);
    v101 = __ROR8__(v185 ^ v97, 48);
    v102 = (v100 ^ v101) + __ROR8__(v179 + v181, 32);
    v103 = v102 ^ __ROR8__(v100 ^ v101, 43);
    v104 = v100 + v99;
    v183 = __ROR8__(v104, 32);
    v185 = v103;
    v179 = v102 ^ v97;
    v181 = v104 ^ __ROR8__(v99, 47);
    bytes = (bytes + v93);
    v187 = (v93 + v90) << 56;
    v89 = v94;
  }

  if (v89 >= 8)
  {
    v105 = v179;
    v108 = v183;
    v106 = v181;
    v107 = v185;
    do
    {
      v109 = *bytes++;
      v110 = v107 ^ v109;
      v111 = v105 + v106;
      v112 = v111 ^ __ROR8__(v106, 51);
      v113 = v108 + v110;
      v114 = __ROR8__(v110, 48);
      v115 = (v113 ^ v114) + __ROR8__(v111, 32);
      v107 = v115 ^ __ROR8__(v113 ^ v114, 43);
      v116 = v113 + v112;
      v106 = v116 ^ __ROR8__(v112, 47);
      v108 = __ROR8__(v116, 32);
      v183 = v108;
      v185 = v107;
      v105 = v115 ^ v109;
      v179 = v105;
      v181 = v106;
      v89 -= 8;
      v90 += 8;
    }

    while (v89 > 7);
  }

  v92 = 0;
LABEL_53:
  if (v89)
  {
    v117 = 0;
    v118 = 0;
    v119 = v89;
    do
    {
      v120 = *bytes;
      bytes = (bytes + 1);
      v118 |= v120 << v117;
      v117 += 8;
      --v119;
    }

    while (v119);
    if (v92)
    {
      v121 = (v118 << (8 * v92)) | ((v89 + v90) << 56) | v91;
    }

    else
    {
      v121 = v118 | ((v89 + v90) << 56);
    }
  }

  else
  {
    if (v92)
    {
      goto LABEL_62;
    }

    v121 = v90 << 56;
  }

  v187 = v121;
LABEL_62:

  v122 = self->_storage;
  v123 = [(NSMutableDictionary *)v122 hash];
  v124 = v187;
  if ((v187 & 0x400000000000000) != 0)
  {
    v143 = v187 & 0xFFFFFFFFFFFFFFLL | (v123 << 32);
    v144 = (v179 + v181) ^ __ROR8__(v181, 51);
    v145 = v183 + (v185 ^ v143);
    v146 = __ROR8__(v185 ^ v143, 48);
    v147 = (v145 ^ v146) + __ROR8__(v179 + v181, 32);
    v148 = v147 ^ __ROR8__(v145 ^ v146, 43);
    v149 = v145 + v144;
    v184 = __ROR8__(v149, 32);
    v186 = v148;
    v180 = v147 ^ v143;
    v182 = v149 ^ __ROR8__(v144, 47);
    v142 = (v187 & 0xFF00000000000000) + HIDWORD(v123) + 0x800000000000000;
  }

  else
  {
    v125 = v179;
    v127 = v183;
    v126 = v181;
    v128 = v185;
    if ((v187 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v129 = (v179 + v181) ^ __ROR8__(v181, 51);
      v130 = v183 + (v185 ^ v187 & 0xFFFFFFFFFFFFFFLL);
      v131 = __ROR8__(v185 ^ v187 & 0xFFFFFFFFFFFFFFLL, 48);
      v132 = (v130 ^ v131) + __ROR8__(v179 + v181, 32);
      v128 = v132 ^ __ROR8__(v130 ^ v131, 43);
      v133 = v130 + v129;
      v126 = v133 ^ __ROR8__(v129, 47);
      v127 = __ROR8__(v133, 32);
      v125 = v132 ^ v187 & 0xFFFFFFFFFFFFFFLL;
      v124 = v187 & 0xFF00000000000000;
    }

    v134 = v128 ^ v123;
    v135 = v125 + v126;
    v136 = (v125 + v126) ^ __ROR8__(v126, 51);
    v137 = v127 + v134;
    v138 = __ROR8__(v134, 48);
    v139 = (v137 ^ v138) + __ROR8__(v135, 32);
    v140 = v139 ^ __ROR8__(v137 ^ v138, 43);
    v141 = v137 + v136;
    v184 = __ROR8__(v141, 32);
    v186 = v140;
    v180 = v139 ^ v123;
    v182 = v141 ^ __ROR8__(v136, 47);
    v142 = v124 + 0x800000000000000;
  }

  v188 = v142;

  v150 = (v180 + v182) ^ __ROR8__(v182, 51);
  v151 = v184 + (v186 ^ v188);
  v152 = __ROR8__(v186 ^ v188, 48);
  v153 = (v151 ^ v152) + __ROR8__(v180 + v182, 32);
  v154 = v153 ^ __ROR8__(v151 ^ v152, 43);
  v155 = v151 + v150;
  v156 = v155 ^ __ROR8__(v150, 47);
  v157 = (v153 ^ v188) + v156;
  v158 = v157 ^ __ROR8__(v156, 51);
  v159 = (__ROR8__(v155, 32) ^ 0xFFLL) + v154;
  v160 = __ROR8__(v154, 48);
  v161 = __ROR8__(v157, 32) + (v159 ^ v160);
  v162 = v161 ^ __ROR8__(v159 ^ v160, 43);
  v163 = v158 + v159;
  v164 = v163 ^ __ROR8__(v158, 47);
  v165 = v164 + v161;
  v166 = v165 ^ __ROR8__(v164, 51);
  v167 = __ROR8__(v163, 32) + v162;
  v168 = __ROR8__(v162, 48);
  v169 = __ROR8__(v165, 32) + (v167 ^ v168);
  v170 = v169 ^ __ROR8__(v167 ^ v168, 43);
  v171 = v166 + v167;
  v172 = v171 ^ __ROR8__(v166, 47);
  v173 = v172 + v169;
  v174 = v173 ^ __ROR8__(v172, 51);
  v175 = __ROR8__(v171, 32) + v170;
  v176 = __ROR8__(v170, 48);
  v177 = __ROR8__(v173, 32) + (v175 ^ v176);
  return (v174 + v175) ^ __ROR8__(v174, 47) ^ v177 ^ __ROR8__(v174 + v175, 32) ^ v177 ^ __ROR8__(v175 ^ v176, 43);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      title = self->_title;
      title = [(MPPlaybackArchiveDisplayProperties *)v5 title];
      if (title == title || [(NSString *)title isEqual:title])
      {
        subtitle = self->_subtitle;
        subtitle = [(MPPlaybackArchiveDisplayProperties *)v5 subtitle];
        if (subtitle == subtitle || [(NSString *)subtitle isEqual:subtitle])
        {
          artworkImageData = self->_artworkImageData;
          artworkImageData = [(MPPlaybackArchiveDisplayProperties *)v5 artworkImageData];
          if (artworkImageData == artworkImageData || [(NSData *)artworkImageData isEqual:artworkImageData])
          {
            storage = self->_storage;
            storage = [(MPPlaybackArchiveDisplayProperties *)v5 storage];
            if (storage == storage)
            {
              v14 = 1;
            }

            else
            {
              v14 = [(NSMutableDictionary *)storage isEqual:storage];
            }
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(MPPlaybackArchiveDisplayProperties *)self title];
  subtitle = [(MPPlaybackArchiveDisplayProperties *)self subtitle];
  artworkImageData = [(MPPlaybackArchiveDisplayProperties *)self artworkImageData];
  artworkImageURL = [(MPPlaybackArchiveDisplayProperties *)self artworkImageURL];
  storage = [(MPPlaybackArchiveDisplayProperties *)self storage];
  v10 = [v3 stringWithFormat:@"<%@: %p title=%@ subtitle=%@ artworkImageData=%@ artworkImageURL=%@ storage=%@>", v4, self, title, subtitle, artworkImageData, artworkImageURL, storage];

  return v10;
}

- (id)copyWithOptions:(unint64_t)options
{
  v5 = [MPPlaybackArchiveDisplayProperties alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__MPPlaybackArchiveDisplayProperties_copyWithOptions___block_invoke;
  v11[3] = &unk_1E767A550;
  v11[4] = self;
  v11[5] = options;
  v6 = [(MPPlaybackArchiveDisplayProperties *)v5 initWithBlock:v11];
  storage = [(MPPlaybackArchiveDisplayProperties *)self storage];
  v8 = [storage mutableCopy];
  v9 = v6[5];
  v6[5] = v8;

  if ((options & 0x10) != 0)
  {
    [v6[5] removeObjectForKey:@"artworkImageURL"];
  }

  return v6;
}

void __54__MPPlaybackArchiveDisplayProperties_copyWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 4) == 0)
  {
    v4 = [*(a1 + 32) title];
    [v7 setTitle:v4];

    v5 = [*(a1 + 32) subtitle];
    [v7 setSubtitle:v5];

    v3 = *(a1 + 40);
  }

  if ((v3 & 8) == 0)
  {
    v6 = [*(a1 + 32) artworkImageData];
    [v7 setArtworkImageData:v6];
  }
}

- (MPPlaybackArchiveDisplayProperties)initWithTitle:(id)title subtitle:(id)subtitle artworkImageData:(id)data
{
  titleCopy = title;
  subtitleCopy = subtitle;
  dataCopy = data;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__MPPlaybackArchiveDisplayProperties_initWithTitle_subtitle_artworkImageData___block_invoke;
  v16[3] = &unk_1E767A528;
  v17 = titleCopy;
  v18 = subtitleCopy;
  v19 = dataCopy;
  v11 = dataCopy;
  v12 = subtitleCopy;
  v13 = titleCopy;
  v14 = [(MPPlaybackArchiveDisplayProperties *)self initWithBlock:v16];

  return v14;
}

void __78__MPPlaybackArchiveDisplayProperties_initWithTitle_subtitle_artworkImageData___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setSubtitle:a1[5]];
  [v4 setArtworkImageData:a1[6]];
}

- (MPPlaybackArchiveDisplayProperties)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = MPPlaybackArchiveDisplayProperties;
  v5 = [(MPPlaybackArchiveDisplayProperties *)&v9 init];
  if (v5)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v5->_storage;
    v5->_storage = dictionary;

    blockCopy[2](blockCopy, v5);
    v5->_final = 1;
  }

  return v5;
}

- (NSURL)artworkImageURL
{
  v2 = [(NSMutableDictionary *)self->_storage objectForKey:@"artworkImageURL"];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:v2];

  return v3;
}

@end