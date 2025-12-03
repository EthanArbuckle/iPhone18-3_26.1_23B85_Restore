@interface MPPlaybackArchive
- (BOOL)isEqual:(id)equal;
- (MPPlaybackArchive)initWithBlock:(id)block;
- (MPPlaybackArchive)initWithCoder:(id)coder;
- (MPPlaybackArchive)initWithType:(int64_t)type sessionIdentifier:(id)identifier data:(id)data dataType:(id)dataType bundleIdentifier:(id)bundleIdentifier supportedOptions:(unint64_t)options displayProperties:(id)properties;
- (NSString)description;
- (id)copyWithOptions:(unint64_t)options;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setBOOLValue:(BOOL)value forOption:(int64_t)option;
- (void)setBundleIdentifier:(id)identifier;
- (void)setDisplayProperties:(id)properties;
- (void)setFallbackStoreIdentifier:(id)identifier;
- (void)setSessionIdentifier:(id)identifier type:(id)type data:(id)data;
- (void)setSupportedOptions:(unint64_t)options;
- (void)setType:(int64_t)type;
@end

@implementation MPPlaybackArchive

- (void)setFallbackStoreIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchive.m" lineNumber:253 description:@"Attempt to mutate after finalization."];

    identifierCopy = v8;
  }

  v6 = [identifierCopy copy];
  [(NSMutableDictionary *)self->_storage setObject:v6 forKeyedSubscript:@"fsi"];
}

- (void)setDisplayProperties:(id)properties
{
  propertiesCopy = properties;
  v9 = propertiesCopy;
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchive.m" lineNumber:248 description:@"Attempt to mutate after finalization."];

    propertiesCopy = v9;
  }

  v6 = [propertiesCopy copy];
  displayProperties = self->_displayProperties;
  self->_displayProperties = v6;
}

- (void)setSupportedOptions:(unint64_t)options
{
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchive.m" lineNumber:243 description:@"Attempt to mutate after finalization."];
  }

  self->_supportedOptions = options;
}

- (void)setBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchive.m" lineNumber:238 description:@"Attempt to mutate after finalization."];

    identifierCopy = v9;
  }

  v6 = [identifierCopy copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v6;
}

- (void)setSessionIdentifier:(id)identifier type:(id)type data:(id)data
{
  identifierCopy = identifier;
  typeCopy = type;
  dataCopy = data;
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchive.m" lineNumber:231 description:@"Attempt to mutate after finalization."];
  }

  v11 = [identifierCopy copy];
  playbackSessionIdentifier = self->_playbackSessionIdentifier;
  self->_playbackSessionIdentifier = v11;

  v13 = [typeCopy copy];
  playbackSessionType = self->_playbackSessionType;
  self->_playbackSessionType = v13;

  v15 = [dataCopy copy];
  playbackSessionData = self->_playbackSessionData;
  self->_playbackSessionData = v15;
}

- (void)setType:(int64_t)type
{
  if (self->_final)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPPlaybackArchive.m" lineNumber:226 description:@"Attempt to mutate after finalization."];
  }

  self->_type = type;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"archiveType"];
  [coderCopy encodeObject:self->_playbackSessionIdentifier forKey:@"sessionID"];
  [coderCopy encodeObject:self->_playbackSessionData forKey:@"data"];
  [coderCopy encodeObject:self->_playbackSessionType forKey:@"sessionType"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleID"];
  [coderCopy encodeInteger:self->_supportedOptions forKey:@"supportedOptions"];
  [coderCopy encodeObject:self->_displayProperties forKey:@"displayProperties"];
  [coderCopy encodeInteger:self->_copyOptions forKey:@"copyOptions"];
  [coderCopy encodeInteger:self->_queueControlOptions forKey:@"queueControlOptions"];
  [coderCopy encodeObject:self->_storage forKey:@"storage"];
}

- (MPPlaybackArchive)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__MPPlaybackArchive_initWithCoder___block_invoke;
  v11[3] = &unk_1E767A500;
  v12 = coderCopy;
  v5 = coderCopy;
  v6 = [(MPPlaybackArchive *)self initWithBlock:v11];
  v6->_copyOptions = [v5 decodeIntegerForKey:@"copyOptions"];
  v6->_queueControlOptions = [v5 decodeIntegerForKey:@"queueControlOptions"];
  v7 = [v5 decodePropertyListForKey:@"storage"];
  v8 = [v7 mutableCopy];
  storage = v6->_storage;
  v6->_storage = v8;

  return v6;
}

void __35__MPPlaybackArchive_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  [v8 setType:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"archiveType"}];
  v3 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  [v8 setBundleIdentifier:v3];

  [v8 setSupportedOptions:{objc_msgSend(*(a1 + 32), "decodeIntegerForKey:", @"supportedOptions"}];
  v4 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
  v5 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"sessionType"];
  v6 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v4)
  {
    [v8 setSessionIdentifier:v4 type:v5 data:v6];
  }

  v7 = [*(a1 + 32) decodeObjectOfClass:objc_opt_class() forKey:@"displayProperties"];
  [v8 setDisplayProperties:v7];
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v4 = v3 ^ 0x736F6D6570736575;
  v6 = v5 ^ 0x646F72616E646F6DLL;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v5 ^ 0x7465646279746573;
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
      v4 = v18 ^ v14;
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

  type = self->_type;
  if ((v23 & 0x400000000000000) != 0)
  {
    v37 = v23 & 0xFFFFFFFFFFFFFFLL | (type << 32);
    v38 = (v4 + v6) ^ __ROR8__(v6, 51);
    v39 = v7 + (v8 ^ v37);
    v40 = __ROR8__(v8 ^ v37, 48);
    v41 = (v39 ^ v40) + __ROR8__(v4 + v6, 32);
    v42 = v41 ^ __ROR8__(v39 ^ v40, 43);
    v43 = v39 + v38;
    v366 = __ROR8__(v43, 32);
    v372 = v42;
    v354 = v41 ^ v37;
    v360 = v43 ^ __ROR8__(v38, 47);
    v36 = (v23 & 0xFF00000000000000) + HIDWORD(type) + 0x800000000000000;
  }

  else
  {
    if ((v23 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v25 = v8 ^ v23 & 0xFFFFFFFFFFFFFFLL;
      v26 = (v4 + v6) ^ __ROR8__(v6, 51);
      v27 = v7 + v25;
      v28 = (v7 + v25) ^ __ROR8__(v25, 48);
      v29 = v28 + __ROR8__(v4 + v6, 32);
      v8 = v29 ^ __ROR8__(v28, 43);
      v6 = (v27 + v26) ^ __ROR8__(v26, 47);
      v7 = __ROR8__(v27 + v26, 32);
      v4 = v29 ^ v23 & 0xFFFFFFFFFFFFFFLL;
      v23 &= 0xFF00000000000000;
    }

    v30 = (v4 + v6) ^ __ROR8__(v6, 51);
    v31 = v7 + (v8 ^ type);
    v32 = __ROR8__(v8 ^ type, 48);
    v33 = (v31 ^ v32) + __ROR8__(v4 + v6, 32);
    v34 = v33 ^ __ROR8__(v31 ^ v32, 43);
    v35 = v31 + v30;
    v366 = __ROR8__(v35, 32);
    v372 = v34;
    v354 = v33 ^ type;
    v360 = v35 ^ __ROR8__(v30, 47);
    v36 = v23 + 0x800000000000000;
  }

  v378 = v36;
  v44 = self->_playbackSessionIdentifier;
  uTF8String2 = [(NSString *)v44 UTF8String];
  v46 = [(NSString *)v44 length];
  v47 = v46;
  v48 = HIBYTE(v378);
  v49 = v378 & 0xFFFFFFFFFFFFFFLL;
  v50 = HIBYTE(v378) & 7;
  if (v50)
  {
    v51 = 8 - v50;
    v52 = v46 - (8 - v50);
    if (v46 < 8 - v50)
    {
      goto LABEL_24;
    }

    v53 = 8 * v50;
    v54 = uTF8String2;
    v55 = v378 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v56 = *v54++;
      v55 |= v56 << v53;
      v53 += 8;
    }

    while (v53 != 64);
    v57 = (v354 + v360) ^ __ROR8__(v360, 51);
    v58 = v366 + (v372 ^ v55);
    v59 = __ROR8__(v372 ^ v55, 48);
    v60 = (v58 ^ v59) + __ROR8__(v354 + v360, 32);
    v61 = v60 ^ __ROR8__(v58 ^ v59, 43);
    v62 = v58 + v57;
    v366 = __ROR8__(v62, 32);
    v372 = v61;
    v354 = v60 ^ v55;
    v360 = v62 ^ __ROR8__(v57, 47);
    uTF8String2 += v51;
    v378 = (v51 + v48) << 56;
    v47 = v52;
  }

  if (v47 >= 8)
  {
    v63 = v354;
    v66 = v366;
    v64 = v360;
    v65 = v372;
    do
    {
      v67 = *uTF8String2;
      uTF8String2 += 8;
      v68 = v65 ^ v67;
      v69 = v63 + v64;
      v70 = v69 ^ __ROR8__(v64, 51);
      v71 = v66 + v68;
      v72 = __ROR8__(v68, 48);
      v73 = (v71 ^ v72) + __ROR8__(v69, 32);
      v65 = v73 ^ __ROR8__(v71 ^ v72, 43);
      v74 = v71 + v70;
      v64 = v74 ^ __ROR8__(v70, 47);
      v66 = __ROR8__(v74, 32);
      v366 = v66;
      v372 = v65;
      v63 = v73 ^ v67;
      v354 = v63;
      v360 = v64;
      v47 -= 8;
      v48 += 8;
    }

    while (v47 > 7);
  }

  v50 = 0;
LABEL_24:
  if (v47)
  {
    v75 = 0;
    v76 = 0;
    v77 = v47;
    do
    {
      v78 = *uTF8String2++;
      v76 |= v78 << v75;
      v75 += 8;
      --v77;
    }

    while (v77);
    if (v50)
    {
      v79 = (v76 << (8 * v50)) | ((v47 + v48) << 56) | v49;
    }

    else
    {
      v79 = v76 | ((v47 + v48) << 56);
    }
  }

  else
  {
    if (v50)
    {
      goto LABEL_33;
    }

    v79 = v48 << 56;
  }

  v378 = v79;
LABEL_33:

  v80 = self->_playbackSessionData;
  bytes = [(NSData *)v80 bytes];
  v82 = [(NSData *)v80 length];
  v83 = v82;
  v84 = HIBYTE(v378);
  v85 = v378 & 0xFFFFFFFFFFFFFFLL;
  v86 = HIBYTE(v378) & 7;
  if (v86)
  {
    v87 = 8 - v86;
    v88 = v82 - (8 - v86);
    if (v82 < 8 - v86)
    {
      goto LABEL_42;
    }

    v89 = 8 * v86;
    v90 = bytes;
    v91 = v378 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v92 = *v90++;
      v91 |= v92 << v89;
      v89 += 8;
    }

    while (v89 != 64);
    v93 = (v354 + v360) ^ __ROR8__(v360, 51);
    v94 = v366 + (v372 ^ v91);
    v95 = __ROR8__(v372 ^ v91, 48);
    v96 = (v94 ^ v95) + __ROR8__(v354 + v360, 32);
    v97 = v96 ^ __ROR8__(v94 ^ v95, 43);
    v98 = v94 + v93;
    v366 = __ROR8__(v98, 32);
    v372 = v97;
    v354 = v96 ^ v91;
    v360 = v98 ^ __ROR8__(v93, 47);
    bytes = (bytes + v87);
    v378 = (v87 + v84) << 56;
    v83 = v88;
  }

  if (v83 >= 8)
  {
    v99 = v354;
    v102 = v366;
    v100 = v360;
    v101 = v372;
    do
    {
      v103 = *bytes++;
      v104 = v101 ^ v103;
      v105 = v99 + v100;
      v106 = v105 ^ __ROR8__(v100, 51);
      v107 = v102 + v104;
      v108 = __ROR8__(v104, 48);
      v109 = (v107 ^ v108) + __ROR8__(v105, 32);
      v101 = v109 ^ __ROR8__(v107 ^ v108, 43);
      v110 = v107 + v106;
      v100 = v110 ^ __ROR8__(v106, 47);
      v102 = __ROR8__(v110, 32);
      v366 = v102;
      v372 = v101;
      v99 = v109 ^ v103;
      v354 = v99;
      v360 = v100;
      v83 -= 8;
      v84 += 8;
    }

    while (v83 > 7);
  }

  v86 = 0;
LABEL_42:
  if (v83)
  {
    v111 = 0;
    v112 = 0;
    v113 = v83;
    do
    {
      v114 = *bytes;
      bytes = (bytes + 1);
      v112 |= v114 << v111;
      v111 += 8;
      --v113;
    }

    while (v113);
    if (v86)
    {
      v115 = (v112 << (8 * v86)) | ((v83 + v84) << 56) | v85;
    }

    else
    {
      v115 = v112 | ((v83 + v84) << 56);
    }
  }

  else
  {
    if (v86)
    {
      goto LABEL_51;
    }

    v115 = v84 << 56;
  }

  v378 = v115;
LABEL_51:

  v116 = self->_playbackSessionType;
  uTF8String3 = [(NSString *)v116 UTF8String];
  v118 = [(NSString *)v116 length];
  v119 = v118;
  v120 = HIBYTE(v378);
  v121 = v378 & 0xFFFFFFFFFFFFFFLL;
  v122 = HIBYTE(v378) & 7;
  if (v122)
  {
    v123 = 8 - v122;
    v124 = v118 - (8 - v122);
    if (v118 < 8 - v122)
    {
      goto LABEL_60;
    }

    v125 = 8 * v122;
    v126 = uTF8String3;
    v127 = v378 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v128 = *v126++;
      v127 |= v128 << v125;
      v125 += 8;
    }

    while (v125 != 64);
    v129 = (v354 + v360) ^ __ROR8__(v360, 51);
    v130 = v366 + (v372 ^ v127);
    v131 = __ROR8__(v372 ^ v127, 48);
    v132 = (v130 ^ v131) + __ROR8__(v354 + v360, 32);
    v133 = v132 ^ __ROR8__(v130 ^ v131, 43);
    v134 = v130 + v129;
    v366 = __ROR8__(v134, 32);
    v372 = v133;
    v354 = v132 ^ v127;
    v360 = v134 ^ __ROR8__(v129, 47);
    uTF8String3 += v123;
    v378 = (v123 + v120) << 56;
    v119 = v124;
  }

  if (v119 >= 8)
  {
    v135 = v354;
    v138 = v366;
    v136 = v360;
    v137 = v372;
    do
    {
      v139 = *uTF8String3;
      uTF8String3 += 8;
      v140 = v137 ^ v139;
      v141 = v135 + v136;
      v142 = v141 ^ __ROR8__(v136, 51);
      v143 = v138 + v140;
      v144 = __ROR8__(v140, 48);
      v145 = (v143 ^ v144) + __ROR8__(v141, 32);
      v137 = v145 ^ __ROR8__(v143 ^ v144, 43);
      v146 = v143 + v142;
      v136 = v146 ^ __ROR8__(v142, 47);
      v138 = __ROR8__(v146, 32);
      v366 = v138;
      v372 = v137;
      v135 = v145 ^ v139;
      v354 = v135;
      v360 = v136;
      v119 -= 8;
      v120 += 8;
    }

    while (v119 > 7);
  }

  v122 = 0;
LABEL_60:
  if (v119)
  {
    v147 = 0;
    v148 = 0;
    v149 = v119;
    do
    {
      v150 = *uTF8String3++;
      v148 |= v150 << v147;
      v147 += 8;
      --v149;
    }

    while (v149);
    if (v122)
    {
      v151 = (v148 << (8 * v122)) | ((v119 + v120) << 56) | v121;
    }

    else
    {
      v151 = v148 | ((v119 + v120) << 56);
    }
  }

  else
  {
    if (v122)
    {
      goto LABEL_69;
    }

    v151 = v120 << 56;
  }

  v378 = v151;
LABEL_69:

  v152 = self->_bundleIdentifier;
  uTF8String4 = [(NSString *)v152 UTF8String];
  v154 = [(NSString *)v152 length];
  v155 = v154;
  v156 = HIBYTE(v378);
  v157 = v378 & 0xFFFFFFFFFFFFFFLL;
  v158 = HIBYTE(v378) & 7;
  if (v158)
  {
    v159 = 8 - v158;
    v160 = v154 - (8 - v158);
    if (v154 < 8 - v158)
    {
      goto LABEL_78;
    }

    v161 = 8 * v158;
    v162 = uTF8String4;
    v163 = v378 & 0xFFFFFFFFFFFFFFLL;
    do
    {
      v164 = *v162++;
      v163 |= v164 << v161;
      v161 += 8;
    }

    while (v161 != 64);
    v165 = (v354 + v360) ^ __ROR8__(v360, 51);
    v166 = v366 + (v372 ^ v163);
    v167 = __ROR8__(v372 ^ v163, 48);
    v168 = (v166 ^ v167) + __ROR8__(v354 + v360, 32);
    v169 = v168 ^ __ROR8__(v166 ^ v167, 43);
    v170 = v166 + v165;
    v366 = __ROR8__(v170, 32);
    v372 = v169;
    v354 = v168 ^ v163;
    v360 = v170 ^ __ROR8__(v165, 47);
    uTF8String4 += v159;
    v378 = (v159 + v156) << 56;
    v155 = v160;
  }

  if (v155 >= 8)
  {
    v171 = v354;
    v174 = v366;
    v172 = v360;
    v173 = v372;
    do
    {
      v175 = *uTF8String4;
      uTF8String4 += 8;
      v176 = v173 ^ v175;
      v177 = v171 + v172;
      v178 = v177 ^ __ROR8__(v172, 51);
      v179 = v174 + v176;
      v180 = __ROR8__(v176, 48);
      v181 = (v179 ^ v180) + __ROR8__(v177, 32);
      v173 = v181 ^ __ROR8__(v179 ^ v180, 43);
      v182 = v179 + v178;
      v172 = v182 ^ __ROR8__(v178, 47);
      v174 = __ROR8__(v182, 32);
      v366 = v174;
      v372 = v173;
      v171 = v181 ^ v175;
      v354 = v171;
      v360 = v172;
      v155 -= 8;
      v156 += 8;
    }

    while (v155 > 7);
  }

  v158 = 0;
LABEL_78:
  if (v155)
  {
    v183 = 0;
    v184 = 0;
    v185 = v155;
    do
    {
      v186 = *uTF8String4++;
      v184 |= v186 << v183;
      v183 += 8;
      --v185;
    }

    while (v185);
    if (v158)
    {
      v187 = (v184 << (8 * v158)) | ((v155 + v156) << 56) | v157;
    }

    else
    {
      v187 = v184 | ((v155 + v156) << 56);
    }
  }

  else
  {
    if (v158)
    {
      goto LABEL_87;
    }

    v187 = v156 << 56;
  }

  v378 = v187;
LABEL_87:

  supportedOptions = self->_supportedOptions;
  v189 = v378;
  if ((v378 & 0x400000000000000) != 0)
  {
    v208 = v378 & 0xFFFFFFFFFFFFFFLL | (supportedOptions << 32);
    v209 = (v354 + v360) ^ __ROR8__(v360, 51);
    v210 = v366 + (v372 ^ v208);
    v211 = __ROR8__(v372 ^ v208, 48);
    v212 = (v210 ^ v211) + __ROR8__(v354 + v360, 32);
    v213 = v212 ^ __ROR8__(v210 ^ v211, 43);
    v214 = v210 + v209;
    v367 = __ROR8__(v214, 32);
    v373 = v213;
    v355 = v212 ^ v208;
    v361 = v214 ^ __ROR8__(v209, 47);
    v207 = (v378 & 0xFF00000000000000) + HIDWORD(supportedOptions) + 0x800000000000000;
  }

  else
  {
    v190 = v354;
    v192 = v366;
    v191 = v360;
    v193 = v372;
    if ((v378 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v194 = (v354 + v360) ^ __ROR8__(v360, 51);
      v195 = v366 + (v372 ^ v378 & 0xFFFFFFFFFFFFFFLL);
      v196 = __ROR8__(v372 ^ v378 & 0xFFFFFFFFFFFFFFLL, 48);
      v197 = (v195 ^ v196) + __ROR8__(v354 + v360, 32);
      v193 = v197 ^ __ROR8__(v195 ^ v196, 43);
      v198 = v195 + v194;
      v191 = v198 ^ __ROR8__(v194, 47);
      v192 = __ROR8__(v198, 32);
      v190 = v197 ^ v378 & 0xFFFFFFFFFFFFFFLL;
      v189 = v378 & 0xFF00000000000000;
    }

    v199 = v193 ^ supportedOptions;
    v200 = v190 + v191;
    v201 = (v190 + v191) ^ __ROR8__(v191, 51);
    v202 = v192 + v199;
    v203 = __ROR8__(v199, 48);
    v204 = (v202 ^ v203) + __ROR8__(v200, 32);
    v205 = v204 ^ __ROR8__(v202 ^ v203, 43);
    v206 = v202 + v201;
    v367 = __ROR8__(v206, 32);
    v373 = v205;
    v355 = v204 ^ supportedOptions;
    v361 = v206 ^ __ROR8__(v201, 47);
    v207 = v189 + 0x800000000000000;
  }

  v379 = v207;
  v215 = self->_displayProperties;
  v216 = [(MPPlaybackArchiveDisplayProperties *)v215 hash];
  v217 = v379;
  if ((v379 & 0x400000000000000) != 0)
  {
    v236 = v379 & 0xFFFFFFFFFFFFFFLL | (v216 << 32);
    v237 = (v355 + v361) ^ __ROR8__(v361, 51);
    v238 = v367 + (v373 ^ v236);
    v239 = __ROR8__(v373 ^ v236, 48);
    v240 = (v238 ^ v239) + __ROR8__(v355 + v361, 32);
    v241 = v240 ^ __ROR8__(v238 ^ v239, 43);
    v242 = v238 + v237;
    v368 = __ROR8__(v242, 32);
    v374 = v241;
    v356 = v240 ^ v236;
    v362 = v242 ^ __ROR8__(v237, 47);
    v235 = (v379 & 0xFF00000000000000) + HIDWORD(v216) + 0x800000000000000;
  }

  else
  {
    v218 = v355;
    v220 = v367;
    v219 = v361;
    v221 = v373;
    if ((v379 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v222 = (v355 + v361) ^ __ROR8__(v361, 51);
      v223 = v367 + (v373 ^ v379 & 0xFFFFFFFFFFFFFFLL);
      v224 = __ROR8__(v373 ^ v379 & 0xFFFFFFFFFFFFFFLL, 48);
      v225 = (v223 ^ v224) + __ROR8__(v355 + v361, 32);
      v221 = v225 ^ __ROR8__(v223 ^ v224, 43);
      v226 = v223 + v222;
      v219 = v226 ^ __ROR8__(v222, 47);
      v220 = __ROR8__(v226, 32);
      v218 = v225 ^ v379 & 0xFFFFFFFFFFFFFFLL;
      v217 = v379 & 0xFF00000000000000;
    }

    v227 = v221 ^ v216;
    v228 = v218 + v219;
    v229 = (v218 + v219) ^ __ROR8__(v219, 51);
    v230 = v220 + v227;
    v231 = __ROR8__(v227, 48);
    v232 = (v230 ^ v231) + __ROR8__(v228, 32);
    v233 = v232 ^ __ROR8__(v230 ^ v231, 43);
    v234 = v230 + v229;
    v368 = __ROR8__(v234, 32);
    v374 = v233;
    v356 = v232 ^ v216;
    v362 = v234 ^ __ROR8__(v229, 47);
    v235 = v217 + 0x800000000000000;
  }

  v380 = v235;

  copyOptions = self->_copyOptions;
  v244 = v380;
  if ((v380 & 0x400000000000000) != 0)
  {
    v263 = v380 & 0xFFFFFFFFFFFFFFLL | (copyOptions << 32);
    v264 = (v356 + v362) ^ __ROR8__(v362, 51);
    v265 = v368 + (v374 ^ v263);
    v266 = __ROR8__(v374 ^ v263, 48);
    v267 = (v265 ^ v266) + __ROR8__(v356 + v362, 32);
    v268 = v267 ^ __ROR8__(v265 ^ v266, 43);
    v269 = v265 + v264;
    v369 = __ROR8__(v269, 32);
    v375 = v268;
    v357 = v267 ^ v263;
    v363 = v269 ^ __ROR8__(v264, 47);
    v262 = (v380 & 0xFF00000000000000) + HIDWORD(copyOptions) + 0x800000000000000;
  }

  else
  {
    v245 = v356;
    v247 = v368;
    v246 = v362;
    v248 = v374;
    if ((v380 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v249 = (v356 + v362) ^ __ROR8__(v362, 51);
      v250 = v368 + (v374 ^ v380 & 0xFFFFFFFFFFFFFFLL);
      v251 = __ROR8__(v374 ^ v380 & 0xFFFFFFFFFFFFFFLL, 48);
      v252 = (v250 ^ v251) + __ROR8__(v356 + v362, 32);
      v248 = v252 ^ __ROR8__(v250 ^ v251, 43);
      v253 = v250 + v249;
      v246 = v253 ^ __ROR8__(v249, 47);
      v247 = __ROR8__(v253, 32);
      v245 = v252 ^ v380 & 0xFFFFFFFFFFFFFFLL;
      v244 = v380 & 0xFF00000000000000;
    }

    v254 = v248 ^ copyOptions;
    v255 = v245 + v246;
    v256 = (v245 + v246) ^ __ROR8__(v246, 51);
    v257 = v247 + v254;
    v258 = __ROR8__(v254, 48);
    v259 = (v257 ^ v258) + __ROR8__(v255, 32);
    v260 = v259 ^ __ROR8__(v257 ^ v258, 43);
    v261 = v257 + v256;
    v369 = __ROR8__(v261, 32);
    v375 = v260;
    v357 = v259 ^ copyOptions;
    v363 = v261 ^ __ROR8__(v256, 47);
    v262 = v244 + 0x800000000000000;
  }

  v381 = v262;
  queueControlOptions = self->_queueControlOptions;
  v271 = v381;
  if ((v381 & 0x400000000000000) != 0)
  {
    v290 = v381 & 0xFFFFFFFFFFFFFFLL | (queueControlOptions << 32);
    v291 = (v357 + v363) ^ __ROR8__(v363, 51);
    v292 = v369 + (v375 ^ v290);
    v293 = __ROR8__(v375 ^ v290, 48);
    v294 = (v292 ^ v293) + __ROR8__(v357 + v363, 32);
    v295 = v294 ^ __ROR8__(v292 ^ v293, 43);
    v296 = v292 + v291;
    v370 = __ROR8__(v296, 32);
    v376 = v295;
    v358 = v294 ^ v290;
    v364 = v296 ^ __ROR8__(v291, 47);
    v289 = (v381 & 0xFF00000000000000) + HIDWORD(queueControlOptions) + 0x800000000000000;
  }

  else
  {
    v272 = v357;
    v274 = v369;
    v273 = v363;
    v275 = v375;
    if ((v381 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v276 = (v357 + v363) ^ __ROR8__(v363, 51);
      v277 = v369 + (v375 ^ v381 & 0xFFFFFFFFFFFFFFLL);
      v278 = __ROR8__(v375 ^ v381 & 0xFFFFFFFFFFFFFFLL, 48);
      v279 = (v277 ^ v278) + __ROR8__(v357 + v363, 32);
      v275 = v279 ^ __ROR8__(v277 ^ v278, 43);
      v280 = v277 + v276;
      v273 = v280 ^ __ROR8__(v276, 47);
      v274 = __ROR8__(v280, 32);
      v272 = v279 ^ v381 & 0xFFFFFFFFFFFFFFLL;
      v271 = v381 & 0xFF00000000000000;
    }

    v281 = v275 ^ queueControlOptions;
    v282 = v272 + v273;
    v283 = (v272 + v273) ^ __ROR8__(v273, 51);
    v284 = v274 + v281;
    v285 = __ROR8__(v281, 48);
    v286 = (v284 ^ v285) + __ROR8__(v282, 32);
    v287 = v286 ^ __ROR8__(v284 ^ v285, 43);
    v288 = v284 + v283;
    v370 = __ROR8__(v288, 32);
    v376 = v287;
    v358 = v286 ^ queueControlOptions;
    v364 = v288 ^ __ROR8__(v283, 47);
    v289 = v271 + 0x800000000000000;
  }

  v382 = v289;
  v297 = self->_storage;
  v298 = [(NSMutableDictionary *)v297 hash];
  v299 = v382;
  if ((v382 & 0x400000000000000) != 0)
  {
    v318 = v382 & 0xFFFFFFFFFFFFFFLL | (v298 << 32);
    v319 = (v358 + v364) ^ __ROR8__(v364, 51);
    v320 = v370 + (v376 ^ v318);
    v321 = __ROR8__(v376 ^ v318, 48);
    v322 = (v320 ^ v321) + __ROR8__(v358 + v364, 32);
    v323 = v322 ^ __ROR8__(v320 ^ v321, 43);
    v324 = v320 + v319;
    v371 = __ROR8__(v324, 32);
    v377 = v323;
    v359 = v322 ^ v318;
    v365 = v324 ^ __ROR8__(v319, 47);
    v317 = (v382 & 0xFF00000000000000) + HIDWORD(v298) + 0x800000000000000;
  }

  else
  {
    v300 = v358;
    v302 = v370;
    v301 = v364;
    v303 = v376;
    if ((v382 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v304 = (v358 + v364) ^ __ROR8__(v364, 51);
      v305 = v370 + (v376 ^ v382 & 0xFFFFFFFFFFFFFFLL);
      v306 = __ROR8__(v376 ^ v382 & 0xFFFFFFFFFFFFFFLL, 48);
      v307 = (v305 ^ v306) + __ROR8__(v358 + v364, 32);
      v303 = v307 ^ __ROR8__(v305 ^ v306, 43);
      v308 = v305 + v304;
      v301 = v308 ^ __ROR8__(v304, 47);
      v302 = __ROR8__(v308, 32);
      v300 = v307 ^ v382 & 0xFFFFFFFFFFFFFFLL;
      v299 = v382 & 0xFF00000000000000;
    }

    v309 = v303 ^ v298;
    v310 = v300 + v301;
    v311 = (v300 + v301) ^ __ROR8__(v301, 51);
    v312 = v302 + v309;
    v313 = __ROR8__(v309, 48);
    v314 = (v312 ^ v313) + __ROR8__(v310, 32);
    v315 = v314 ^ __ROR8__(v312 ^ v313, 43);
    v316 = v312 + v311;
    v371 = __ROR8__(v316, 32);
    v377 = v315;
    v359 = v314 ^ v298;
    v365 = v316 ^ __ROR8__(v311, 47);
    v317 = v299 + 0x800000000000000;
  }

  v383 = v317;

  v325 = (v359 + v365) ^ __ROR8__(v365, 51);
  v326 = v371 + (v377 ^ v383);
  v327 = __ROR8__(v377 ^ v383, 48);
  v328 = (v326 ^ v327) + __ROR8__(v359 + v365, 32);
  v329 = v328 ^ __ROR8__(v326 ^ v327, 43);
  v330 = v326 + v325;
  v331 = v330 ^ __ROR8__(v325, 47);
  v332 = (v328 ^ v383) + v331;
  v333 = v332 ^ __ROR8__(v331, 51);
  v334 = (__ROR8__(v330, 32) ^ 0xFFLL) + v329;
  v335 = __ROR8__(v329, 48);
  v336 = __ROR8__(v332, 32) + (v334 ^ v335);
  v337 = v336 ^ __ROR8__(v334 ^ v335, 43);
  v338 = v333 + v334;
  v339 = v338 ^ __ROR8__(v333, 47);
  v340 = v339 + v336;
  v341 = v340 ^ __ROR8__(v339, 51);
  v342 = __ROR8__(v338, 32) + v337;
  v343 = __ROR8__(v337, 48);
  v344 = __ROR8__(v340, 32) + (v342 ^ v343);
  v345 = v344 ^ __ROR8__(v342 ^ v343, 43);
  v346 = v341 + v342;
  v347 = v346 ^ __ROR8__(v341, 47);
  v348 = v347 + v344;
  v349 = v348 ^ __ROR8__(v347, 51);
  v350 = __ROR8__(v346, 32) + v345;
  v351 = __ROR8__(v345, 48);
  v352 = __ROR8__(v348, 32) + (v350 ^ v351);
  return (v349 + v350) ^ __ROR8__(v349, 47) ^ v352 ^ __ROR8__(v349 + v350, 32) ^ v352 ^ __ROR8__(v350 ^ v351, 43);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = self->_type;
      if (type == [(MPPlaybackArchive *)v5 type])
      {
        playbackSessionIdentifier = self->_playbackSessionIdentifier;
        playbackSessionIdentifier = [(MPPlaybackArchive *)v5 playbackSessionIdentifier];
        if (playbackSessionIdentifier == playbackSessionIdentifier || [(NSString *)playbackSessionIdentifier isEqual:playbackSessionIdentifier])
        {
          playbackSessionData = self->_playbackSessionData;
          playbackSessionData = [(MPPlaybackArchive *)v5 playbackSessionData];
          if (playbackSessionData == playbackSessionData || [(NSData *)playbackSessionData isEqual:playbackSessionData])
          {
            playbackSessionType = self->_playbackSessionType;
            playbackSessionType = [(MPPlaybackArchive *)v5 playbackSessionType];
            if (playbackSessionType == playbackSessionType || [(NSString *)playbackSessionType isEqual:playbackSessionType])
            {
              bundleIdentifier = self->_bundleIdentifier;
              bundleIdentifier = [(MPPlaybackArchive *)v5 bundleIdentifier];
              if ((bundleIdentifier == bundleIdentifier || [(NSString *)bundleIdentifier isEqual:bundleIdentifier]) && (supportedOptions = self->_supportedOptions, supportedOptions == [(MPPlaybackArchive *)v5 supportedOptions]))
              {
                displayProperties = self->_displayProperties;
                displayProperties = [(MPPlaybackArchive *)v5 displayProperties];
                if ((displayProperties == displayProperties || [(MPPlaybackArchiveDisplayProperties *)displayProperties isEqual:displayProperties]) && (copyOptions = self->_copyOptions, copyOptions == [(MPPlaybackArchive *)v5 copyOptions]) && (queueControlOptions = self->_queueControlOptions, queueControlOptions == [(MPPlaybackArchive *)v5 queueControlOptions]))
                {
                  storage = self->_storage;
                  storage = [(MPPlaybackArchive *)v5 storage];
                  if (storage == storage)
                  {
                    v22 = 1;
                  }

                  else
                  {
                    v22 = [(NSMutableDictionary *)storage isEqual:storage];
                  }
                }

                else
                {
                  v22 = 0;
                }
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (NSString)description
{
  v16 = MEMORY[0x1E696AEC0];
  v15 = objc_opt_class();
  type = [(MPPlaybackArchive *)self type];
  playbackSessionIdentifier = [(MPPlaybackArchive *)self playbackSessionIdentifier];
  playbackSessionData = [(MPPlaybackArchive *)self playbackSessionData];
  playbackSessionType = [(MPPlaybackArchive *)self playbackSessionType];
  bundleIdentifier = [(MPPlaybackArchive *)self bundleIdentifier];
  supportedOptions = [(MPPlaybackArchive *)self supportedOptions];
  queueControlOptions = [(MPPlaybackArchive *)self queueControlOptions];
  displayProperties = [(MPPlaybackArchive *)self displayProperties];
  copyOptions = [(MPPlaybackArchive *)self copyOptions];
  storage = [(MPPlaybackArchive *)self storage];
  v12 = [v16 stringWithFormat:@"<%@: %p type=%ld playbackSessionIdentifier=%@ playbackSessionData=%@ playbackSessionType=%@ bundleIdentifier=%@ supportedOptions=%lu queueControlOptions=%lu displayProperties=%@ copyOptions=%lu> storage=%@", v15, self, type, playbackSessionIdentifier, playbackSessionData, playbackSessionType, bundleIdentifier, supportedOptions, queueControlOptions, displayProperties, copyOptions, storage];

  return v12;
}

- (id)copyWithOptions:(unint64_t)options
{
  v5 = [MPPlaybackArchive alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__MPPlaybackArchive_copyWithOptions___block_invoke;
  v9[3] = &unk_1E767A4D8;
  v9[4] = self;
  v9[5] = options;
  v6 = [(MPPlaybackArchive *)v5 initWithBlock:v9];
  [(MPPlaybackArchive *)v6 setCopyOptions:options];
  [(MPPlaybackArchive *)v6 setQueueControlOptions:self->_queueControlOptions];
  v7 = [(NSMutableDictionary *)self->_storage copy];
  [(MPPlaybackArchive *)v6 setStorage:v7];

  return v6;
}

void __37__MPPlaybackArchive_copyWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 setType:{objc_msgSend(*(a1 + 32), "type")}];
  v3 = [*(a1 + 32) bundleIdentifier];
  [v9 setBundleIdentifier:v3];

  [v9 setSupportedOptions:{objc_msgSend(*(a1 + 32), "supportedOptions")}];
  if ((*(a1 + 40) & 2) == 0)
  {
    v4 = [*(a1 + 32) playbackSessionIdentifier];
    v5 = [*(a1 + 32) playbackSessionType];
    v6 = [*(a1 + 32) playbackSessionData];
    [v9 setSessionIdentifier:v4 type:v5 data:v6];
  }

  v7 = [*(a1 + 32) displayProperties];
  v8 = [v7 copyWithOptions:*(a1 + 40)];
  [v9 setDisplayProperties:v8];
}

- (void)setBOOLValue:(BOOL)value forOption:(int64_t)option
{
  v5 = 1 << option;
  if (value)
  {
    v6 = [(MPPlaybackArchive *)self queueControlOptions]| v5;
  }

  else
  {
    v6 = [(MPPlaybackArchive *)self queueControlOptions]& ~v5;
  }

  [(MPPlaybackArchive *)self setQueueControlOptions:v6];
}

- (MPPlaybackArchive)initWithType:(int64_t)type sessionIdentifier:(id)identifier data:(id)data dataType:(id)dataType bundleIdentifier:(id)bundleIdentifier supportedOptions:(unint64_t)options displayProperties:(id)properties
{
  identifierCopy = identifier;
  dataCopy = data;
  dataTypeCopy = dataType;
  bundleIdentifierCopy = bundleIdentifier;
  propertiesCopy = properties;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __118__MPPlaybackArchive_initWithType_sessionIdentifier_data_dataType_bundleIdentifier_supportedOptions_displayProperties___block_invoke;
  v27[3] = &unk_1E767A4B0;
  v28 = identifierCopy;
  v29 = dataTypeCopy;
  v30 = dataCopy;
  v31 = bundleIdentifierCopy;
  typeCopy = type;
  optionsCopy = options;
  v32 = propertiesCopy;
  v20 = propertiesCopy;
  v21 = bundleIdentifierCopy;
  v22 = dataCopy;
  v23 = dataTypeCopy;
  v24 = identifierCopy;
  v25 = [(MPPlaybackArchive *)self initWithBlock:v27];

  return v25;
}

void __118__MPPlaybackArchive_initWithType_sessionIdentifier_data_dataType_bundleIdentifier_supportedOptions_displayProperties___block_invoke(void *a1, void *a2)
{
  v3 = a1[9];
  v4 = a2;
  [v4 setType:v3];
  [v4 setSessionIdentifier:a1[4] type:a1[5] data:a1[6]];
  [v4 setBundleIdentifier:a1[7]];
  [v4 setSupportedOptions:a1[10]];
  [v4 setDisplayProperties:a1[8]];
}

- (MPPlaybackArchive)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = MPPlaybackArchive;
  v5 = [(MPPlaybackArchive *)&v9 init];
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

@end