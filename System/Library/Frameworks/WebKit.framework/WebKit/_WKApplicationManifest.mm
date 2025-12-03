@interface _WKApplicationManifest
+ (id)applicationManifestFromJSON:(id)n manifestURL:(id)l documentURL:(id)rL;
- (NSArray)categories;
- (NSArray)icons;
- (NSArray)shortcuts;
- (NSString)applicationDescription;
- (NSString)name;
- (NSString)rawJSON;
- (NSString)shortName;
- (NSURL)manifestId;
- (NSURL)manifestURL;
- (NSURL)scope;
- (NSURL)startURL;
- (UIColor)backgroundColor;
- (UIColor)themeColor;
- (_WKApplicationManifest)initWithCoder:(id)coder;
- (_WKApplicationManifest)initWithJSONData:(id)data manifestURL:(id)l documentURL:(id)rL;
- (int64_t)direction;
- (int64_t)displayMode;
- (optional<_WKApplicationManifestOrientation>)orientation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _WKApplicationManifest

- (_WKApplicationManifest)initWithJSONData:(id)data manifestURL:(id)l documentURL:(id)rL
{
  v24.receiver = self;
  v24.super_class = _WKApplicationManifest;
  v8 = [(_WKApplicationManifest *)&v24 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:data encoding:4];
    if (v9)
    {
      v10 = v9;
      MEMORY[0x19EB02040](&v25, v9);
      MEMORY[0x19EB01DE0](v21, l);
      MEMORY[0x19EB01DE0](v20, rL);
      WebCore::ApplicationManifestParser::parseWithValidation(v22, &v25, v21, v20, v11);
      v13 = v20[0];
      v20[0] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v12);
      }

      v14 = v21[0];
      v21[0] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v12);
      }

      v15 = v25;
      v25 = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v15 = WTF::StringImpl::destroy(v15, v12);
      }

      if (v23)
      {
        v16 = API::Object::apiObjectsUnderConstruction(v15);
        v20[0] = [(_WKApplicationManifest *)v8 _apiObject];
        v25 = v8;
        WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v16, v20, &v25, v21);
        v17 = API::Object::Object([(_WKApplicationManifest *)v8 _apiObject]);
        *v17 = &unk_1F10FAA30;
        WebCore::ApplicationManifest::ApplicationManifest(v17 + 16, v22);
        if (v23)
        {
          WebCore::ApplicationManifest::~ApplicationManifest(v22, v18);
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (_WKApplicationManifest)initWithCoder:(id)coder
{
  v131[2] = *MEMORY[0x1E69E9840];
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"raw_json"];
  MEMORY[0x19EB02040](&v115, v5);
  v6 = [coder decodeIntegerForKey:@"dir"];
  if (v6 >= 3)
  {
    __break(0xC471u);
    goto LABEL_53;
  }

  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  MEMORY[0x19EB02040](&v114, v7);
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"short_name"];
  MEMORY[0x19EB02040](&v113, v8);
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"description"];
  MEMORY[0x19EB02040](&v112, v9);
  v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"scope"];
  MEMORY[0x19EB01DE0](&v109, v10);
  v11 = [coder decodeBoolForKey:@"is_default_scope"];
  v12 = [coder decodeIntegerForKey:@"display"];
  v13 = [coder decodeIntegerForKey:@"orientation"];
  v14 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"manifest_url"];
  MEMORY[0x19EB01DE0](&v106, v14);
  v15 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"start_url"];
  MEMORY[0x19EB01DE0](&v103, v15);
  v16 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"manifestId"];
  MEMORY[0x19EB01DE0](&v100, v16);
  v73 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"background_color"];
  selfCopy = self;
  v72 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"theme_color"];
  v17 = MEMORY[0x1E695DFD8];
  v131[0] = objc_opt_class();
  v131[1] = objc_opt_class();
  v18 = [coder decodeObjectOfClasses:objc_msgSend(v17 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v131, 2)), @"categories"}];
  v19 = MEMORY[0x1E695DFD8];
  v130[0] = objc_opt_class();
  v130[1] = objc_opt_class();
  v20 = [coder decodeObjectOfClasses:objc_msgSend(v19 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v130, 2)), @"icons"}];
  v21 = MEMORY[0x1E695DFD8];
  v129[0] = objc_opt_class();
  v129[1] = objc_opt_class();
  v129[2] = objc_opt_class();
  v22 = [coder decodeObjectOfClasses:objc_msgSend(v21 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v129, 3)), @"shortcuts"}];
  v74 = v115;
  v75 = v6;
  v23 = v114;
  v114 = 0;
  v115 = 0;
  v76 = v23;
  v77 = v113;
  v24 = v112;
  v112 = 0;
  v113 = 0;
  v25 = v109;
  v109 = 0;
  v78 = v24;
  v79 = v25;
  v80 = v110;
  v81 = v111;
  LODWORD(v110) = v110 & 0xFFFFFFFE;
  v82 = v11;
  v83 = v12;
  v26 = v13 | 0x100;
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = 0;
  }

  v84 = v26;
  v27 = v106;
  v106 = 0;
  v85 = v27;
  v86 = v107;
  v87 = v108;
  LODWORD(v107) = v107 & 0xFFFFFFFE;
  v28 = v103;
  v103 = 0;
  v89 = v104;
  v90 = v105;
  LODWORD(v104) = v104 & 0xFFFFFFFE;
  v29 = v100;
  v100 = 0;
  v88 = v28;
  v91 = v29;
  v92 = v101;
  v93 = v102;
  LODWORD(v101) = v101 & 0xFFFFFFFE;
  cGColor = [v73 CGColor];
  v32 = WebCore::roundAndClampToSRGBALossy(cGColor, v31);
  v94 = (bswap32(v32) | 0x1104000000000000) & (v32 << 31 >> 63);
  cGColor2 = [v72 CGColor];
  v35 = WebCore::roundAndClampToSRGBALossy(cGColor2, v34);
  v95 = (bswap32(v35) | 0x1104000000000000) & (v35 << 31 >> 63);
  v116[0] = v18;
  v36 = [(WTF::StringImpl *)v18 count];
  *&v122 = v116;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WTF::String>(NSArray *)::{lambda(unsigned long)#1}>(v96, v36, &v122, 0);
  v116[0] = v20;
  v37 = [(WTF::StringImpl *)v20 count];
  *&v122 = v116;
  WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WebCore::ApplicationManifest::Icon>(NSArray *)::{lambda(unsigned long)#1}>(v97, v37, &v122);
  v38 = [v22 count];
  v39 = v38;
  v98 = 0;
  v99 = 0;
  if (!v38)
  {
    v56 = 0;
    goto LABEL_26;
  }

  if (v38 >> 26)
  {
    __break(0xC471u);
LABEL_53:
    JUMPOUT(0x19DB4DE64);
  }

  v40 = WTF::fastMalloc((v38 << 6));
  v41 = 0;
  LODWORD(v99) = v39;
  v98 = v40;
  do
  {
    v42 = [v22 objectAtIndexedSubscript:v41];
    if (v42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        MEMORY[0x19EB02040](&v122, [v42 name]);
        MEMORY[0x19EB01DE0](&v122 + 8, [v42 url]);
        icons = [v42 icons];
        v43 = [(_WKApplicationManifest *)icons count];
        v127 = &icons;
        WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector<WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::makeVector<WebCore::ApplicationManifest::Icon>(NSArray *)::{lambda(unsigned long)#1}>(&v125, v43, &v127);
        v44 = v122;
        v122 = 0uLL;
        *v116 = v44;
        v117 = v123;
        v118 = v124;
        LODWORD(v123) = v123 & 0xFFFFFFFE;
        v119 = v125;
        *&v44 = v126;
        v125 = 0;
        v126 = 0;
        v120 = v44;
        v121 = 1;
        WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v125, v45);
        v47 = *(&v122 + 1);
        *(&v122 + 1) = 0;
        if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v47, v46);
        }

        v48 = v122;
        *&v122 = 0;
        if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v48, v46);
        }

        if (v121)
        {
          v49 = v98 + (HIDWORD(v99) << 6);
          v50 = v116[0];
          v116[0] = 0;
          *v49 = v50;
          WTF::URL::URL(v49 + 8, &v116[1]);
          *(v49 + 48) = 0;
          *(v49 + 56) = 0;
          v52 = v119;
          v119 = 0;
          *(v49 + 48) = v52;
          LODWORD(v52) = v120;
          LODWORD(v120) = 0;
          *(v49 + 56) = v52;
          LODWORD(v52) = HIDWORD(v120);
          HIDWORD(v120) = 0;
          *(v49 + 60) = v52;
          ++HIDWORD(v99);
          if (v121)
          {
            WTF::Vector<WebCore::ApplicationManifest::Icon,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v119, v51);
            v54 = v116[1];
            v116[1] = 0;
            if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v54, v53);
            }

            v55 = v116[0];
            v116[0] = 0;
            if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v55, v53);
            }
          }
        }
      }
    }

    ++v41;
  }

  while (v39 != v41);
  v56 = HIDWORD(v99);
LABEL_26:
  v57 = WTF::Vector<WebCore::ApplicationManifest::Shortcut,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v98, v56);
  v58 = API::Object::apiObjectsUnderConstruction(v57);
  *&v122 = [(_WKApplicationManifest *)selfCopy _apiObject];
  icons = selfCopy;
  WTF::HashMap<API::Object *,void const*,WTF::DefaultHash<API::Object *>,WTF::HashTraits<API::Object *>,WTF::HashTraits<void const*>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<void const*>(v58, &v122, &icons, v116);
  v59 = API::Object::Object([(_WKApplicationManifest *)selfCopy _apiObject]);
  *v59 = &unk_1F10FAA30;
  WebCore::ApplicationManifest::ApplicationManifest(v59 + 16, &v74);
  WebCore::ApplicationManifest::~ApplicationManifest(&v74, v60);
  v62 = v100;
  v100 = 0;
  if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v62, v61);
  }

  v63 = v103;
  v103 = 0;
  if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v63, v61);
  }

  v64 = v106;
  v106 = 0;
  if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v64, v61);
  }

  v65 = v109;
  v109 = 0;
  if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v65, v61);
  }

  v66 = v112;
  v112 = 0;
  if (v66 && atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v66, v61);
  }

  v67 = v113;
  v113 = 0;
  if (v67 && atomic_fetch_add_explicit(v67, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v67, v61);
  }

  v68 = v114;
  v114 = 0;
  if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v68, v61);
  }

  v69 = v115;
  v115 = 0;
  if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v69, v61);
  }

  return selfCopy;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if ((WebCoreObjCScheduleDeallocateOnMainRunLoop(v3, self) & 1) == 0)
  {
    WebCore::ApplicationManifest::~ApplicationManifest(&self->_applicationManifest.m_storage.data[16], v4);
    v5.receiver = self;
    v5.super_class = _WKApplicationManifest;
    [(_WKApplicationManifest *)&v5 dealloc];
  }
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[_WKApplicationManifest rawJSON](self forKey:{"rawJSON"), @"raw_json"}];
  [coder encodeInteger:self->_applicationManifest.m_storage.data[24] forKey:@"dir"];
  [coder encodeObject:-[_WKApplicationManifest name](self forKey:{"name"), @"name"}];
  [coder encodeObject:-[_WKApplicationManifest shortName](self forKey:{"shortName"), @"short_name"}];
  [coder encodeObject:-[_WKApplicationManifest applicationDescription](self forKey:{"applicationDescription"), @"description"}];
  [coder encodeObject:-[_WKApplicationManifest scope](self forKey:{"scope"), @"scope"}];
  [coder encodeBool:-[_WKApplicationManifest isDefaultScope](self forKey:{"isDefaultScope"), @"is_default_scope"}];
  [coder encodeInteger:self->_anon_38[49] forKey:@"display"];
  if (self->_anon_38[51] == 1)
  {
    v5 = self->_anon_38[50];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [coder encodeInteger:v5 forKey:@"orientation"];
  [coder encodeObject:-[_WKApplicationManifest manifestURL](self forKey:{"manifestURL"), @"manifest_url"}];
  [coder encodeObject:-[_WKApplicationManifest startURL](self forKey:{"startURL"), @"start_url"}];
  [coder encodeObject:-[_WKApplicationManifest manifestId](self forKey:{"manifestId"), @"manifestId"}];
  [coder encodeObject:-[_WKApplicationManifest backgroundColor](self forKey:{"backgroundColor"), @"background_color"}];
  [coder encodeObject:-[_WKApplicationManifest themeColor](self forKey:{"themeColor"), @"theme_color"}];
  [coder encodeObject:-[_WKApplicationManifest categories](self forKey:{"categories"), @"categories"}];
  [coder encodeObject:-[_WKApplicationManifest icons](self forKey:{"icons"), @"icons"}];
  shortcuts = [(_WKApplicationManifest *)self shortcuts];

  [coder encodeObject:shortcuts forKey:@"shortcuts"];
}

+ (id)applicationManifestFromJSON:(id)n manifestURL:(id)l documentURL:(id)rL
{
  MEMORY[0x19EB02040](&v21, n);
  MEMORY[0x19EB01DE0](v20, l);
  MEMORY[0x19EB01DE0](v19, rL);
  WebCore::ApplicationManifestParser::parse(v22, &v21, v20, v19, v7);
  v9 = v19[0];
  v19[0] = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  v10 = v20[0];
  v20[0] = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v8);
  }

  v11 = v21;
  v21 = 0;
  if (v11)
  {
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }
  }

  API::ApplicationManifest::create(v22, v20);
  v12 = *(v20[0] + 1);
  if (!v12)
  {
    v17 = 0;
    v20[0] = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
    v14 = v12;
    v16 = v20[0];
    v20[0] = 0;
    if (!v16)
    {
LABEL_16:
      WebCore::ApplicationManifest::~ApplicationManifest(v22, v15);
      return v12;
    }

    v17 = *(v16 + 1);
LABEL_15:
    CFRelease(v17);
    goto LABEL_16;
  }

  result = 117;
  __break(0xC471u);
  return result;
}

- (NSString)rawJSON
{
  nullableNSString(&v6, *&self->_applicationManifest.m_storage.data[16]);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (int64_t)direction
{
  v2 = self->_applicationManifest.m_storage.data[24];
  if (v2 == 2)
  {
    return 2;
  }

  else
  {
    return v2 == 1;
  }
}

- (NSString)name
{
  nullableNSString(&v6, *&self->_applicationManifest.m_storage.data[32]);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (NSString)shortName
{
  nullableNSString(&v6, *&self->_applicationManifest.m_storage.data[40]);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (NSString)applicationDescription
{
  nullableNSString(&v6, *self->_anon_38);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (NSURL)scope
{
  WTF::URL::createCFURL(&v6, &self->_anon_38[8]);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (NSURL)manifestURL
{
  WTF::URL::createCFURL(&v6, &self->_anon_38[56]);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (NSURL)startURL
{
  WTF::URL::createCFURL(&v6, &self->_anon_38[96]);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (UIColor)backgroundColor
{
  WebCore::cocoaColor(&v6, &self->_anon_38[176], a2);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (UIColor)themeColor
{
  WebCore::cocoaColor(&v6, &self->_anon_38[184], a2);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

- (int64_t)displayMode
{
  if (self->_anon_38[49] - 1 < 3)
  {
    return (self->_anon_38[49] - 1) + 1;
  }

  else
  {
    return 0;
  }
}

- (optional<_WKApplicationManifestOrientation>)orientation
{
  if (self->_anon_38[51] == 1 && (v2 = self->_anon_38[50], v2 <= 7))
  {
    v3 = stru_19E7035F0[v2];
    v4 = 1;
  }

  else
  {
    v3.var1 = 0;
    v4 = 0;
  }

  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (NSArray)categories
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&self->_anon_38[204]];
  v4 = *&self->_anon_38[204];
  if (v4)
  {
    v5 = *&self->_anon_38[192];
    v6 = 8 * v4;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](&v13, v7);
        if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, v8);
        }
      }

      else
      {
        v13 = &stru_1F1147748;
        v9 = &stru_1F1147748;
      }

      if (v13)
      {
        [(NSArray *)v3 addObject:?];
        v10 = v13;
        v13 = 0;
        if (v10)
        {
        }
      }

      ++v5;
      v6 -= 8;
    }

    while (v6);
  }

  if (v3)
  {
    v11 = v3;
  }

  return v3;
}

- (NSArray)icons
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&self->_anon_38[220]];
  v4 = *&self->_anon_38[220];
  if (v4)
  {
    v5 = *&self->_anon_38[208];
    v6 = 72 * v4;
    do
    {
      v7 = [[_WKApplicationManifestIcon alloc] initWithCoreIcon:v5];
      if (v7)
      {
        [(NSArray *)v3 addObject:v7];
      }

      v5 += 72;
      v6 -= 72;
    }

    while (v6);
  }

  if (v3)
  {
    v8 = v3;
  }

  return v3;
}

- (NSArray)shortcuts
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*&self->_anon_38[236]];
  v4 = *&self->_anon_38[236];
  if (v4)
  {
    v5 = *&self->_anon_38[224];
    v6 = v4 << 6;
    do
    {
      v7 = [[_WKApplicationManifestShortcut alloc] initWithCoreShortcut:v5];
      if (v7)
      {
        [(NSArray *)v3 addObject:v7];
      }

      v5 += 64;
      v6 -= 64;
    }

    while (v6);
  }

  if (v3)
  {
    v8 = v3;
  }

  return v3;
}

- (NSURL)manifestId
{
  WTF::URL::createCFURL(&v6, &self->_anon_38[136]);
  v2 = v6;
  v6 = 0;
  if (v2)
  {
    v3 = v2;
    v4 = v6;
    v6 = 0;
    if (v4)
    {
    }
  }

  return v2;
}

@end