uint64_t sub_1002CBE6C()
{
  v7 = *(v0 + 176);
  v8 = *(v0 + 168);
  *(v0 + 152) = v0;
  *(v0 + 104) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  *(v0 + 112) = v1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://document/", 0x18uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  *(v0 + 88) = *v7;
  sub_100268860((v0 + 88), (v0 + 120));
  *(v0 + 136) = *(v0 + 88);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_100268744();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  sub_100268744();
  *v8 = String.init(stringInterpolation:)();
  v8[1] = v4;
  v5 = *(*(v0 + 152) + 8);

  return v5();
}

uint64_t sub_1002CC010()
{
  if (qword_1006D5E40 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_1002CC084()
{
  if (qword_1006D5E48 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t sub_1002CC0F8@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = "An email draft message";
  v66 = 0;
  v61 = 0;
  v62 = 0;
  v2 = sub_10025C9B0(&unk_1006D9D00);
  v30 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v31 = &v16 - v30;
  v3 = sub_10025C9B0(&qword_1006D6280);
  v32 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v33 = &v16 - v32;
  v40 = 0;
  v34 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v35 = &v16 - v34;
  v36 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v37 = &v16 - v36;
  v38 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v39 = &v16 - v38;
  v41 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v40);
  v45 = &v16 - v44;
  v46 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v47 = &v16 - v46;
  v48 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v49 = &v16 - v48;
  v50 = type metadata accessor for LocalizedStringResource();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v54 = &v16 - v53;
  v66 = v1;
  v55 = sub_1002CC92C();
  v56 = v8;
  if (v8)
  {
    v26 = v55;
    v27 = v56;
    v24 = v56;
    v25 = v55;
    v61 = v55;
    v62 = v56;
    v9 = String.isEmpty.getter();
    if ((v9 & 1) == 0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v21 = 0;
      v23 = 1;
      v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft message about “", 0x17uLL, 0);
      object = v10._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);

      v11._countAndFlagsBits = v25;
      v11._object = v24;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v11);
      v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("”", 3uLL, v21 & 1);
      v20 = v12._object;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);

      (*(v42 + 16))(v47, v49, v41);
      (*(v42 + 32))(v45, v47, v41);
      (*(v42 + 8))(v49, v41);
      String.LocalizationValue.init(stringInterpolation:)();
      v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v23 & 1);
      sub_100015CC0();
      sub_10025D410(v35);
      v57 = v29;
      v58 = 22;
      v59 = 2;
      v60 = v21 & 1 & v23;
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      (*(v51 + 56))(v33, v23, v23, v50);
      v13 = type metadata accessor for DisplayRepresentation.Image();
      (*(*(v13 - 8) + 56))(v31, v23);
      DisplayRepresentation.init(title:subtitle:image:)();
    }
  }

  v18 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Draft message with no subject", 0x1DuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v17 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v18 & 1);
  sub_100015CC0();
  sub_10025D410(v35);
  v63 = v29;
  v64 = 22;
  v65 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v51 + 56))(v33, v18, v18, v50);
  v15 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v15 - 8) + 56))(v31, v18);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1002CC92C()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t InstantAnswerView.Model.Flight.travelDate.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1002CC9CC()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_1002CCA28()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_1002CCA9C()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_1002CCAF4()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_1002CCB50()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_1002CCBC4()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_1002CCC1C()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_1002CCC78()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_1002CCCEC()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_1002CCD44()
{

  EntityProperty.wrappedValue.setter();
}

uint64_t sub_1002CCDCC()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_1002CCE24()
{

  EntityProperty.wrappedValue.getter();
}

uint64_t sub_1002CCE78(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 48);

  sub_100289B6C(v6, v4);
  EntityProperty.wrappedValue.setter();

  return sub_100285F68(v6);
}

uint64_t sub_1002CCF50()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_1002CCFA8()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_1002CD004()
{

  EntityProperty.wrappedValue.setter();
}

void *sub_1002CD078(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  v4 = a1[2];

  a2[2] = v4;
  v5 = a1[3];

  a2[3] = v5;
  v6 = a1[4];

  a2[4] = v6;
  v7 = a1[5];

  a2[5] = v7;
  v8 = a1[6];

  a2[6] = v8;
  v10 = a1[7];

  a2[7] = v10;
  v12 = a1[8];

  result = a2;
  a2[8] = v12;
  return result;
}

uint64_t sub_1002CD180()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_1002CD1D8()
{

  EntityProperty.wrappedValue.getter();

  return v1;
}

uint64_t sub_1002CD24C(void *a1)
{

  _objc_retain(a1);

  EntityProperty.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_1002CD318()
{

  v1 = EntityProperty.projectedValue.getter();

  return v1;
}

uint64_t sub_1002CD370()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_1002CD39C(uint64_t a1)
{

  *(v1 + 64) = a1;
}

__n128 sub_1002CD3D8@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a1;
  v34 = a2;
  v51 = 0;
  v70 = 0;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0;
  v35 = 0;
  v36 = type metadata accessor for MailMessageEntityID();
  v37 = *(v36 - 8);
  v38 = v37;
  __chkstk_darwin(0);
  v39 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Logger();
  v41 = v48;
  v42 = *(v48 - 8);
  v47 = v42;
  v43 = v42;
  v3 = __chkstk_darwin(v40);
  v46 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v46;
  v65 = v3;
  v45 = sub_10025C9B0(&qword_1006D7F38);
  v67.n128_u64[0] = EntityProperty<>.init()();
  v67.n128_u64[1] = EntityProperty<>.init()();
  *&v68 = EntityProperty<>.init()();
  sub_10025C9B0(&unk_1006DA2D0);
  *(&v68 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F40);
  *&v69 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F48);
  *(&v69 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F50);
  sub_100264788();
  v5 = EntityProperty<>.init()();
  v6 = v46;
  v70 = v5;
  v7 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v47 + 16))(v6, v7, v48);
  v53 = Logger.logObject.getter();
  v49 = v53;
  v52 = static os_log_type_t.info.getter();
  v50 = v52;
  sub_10025C9B0(&unk_1006D7720);
  v54 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v53, v52))
  {
    v8 = v35;
    v25 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = v25;
    v22 = sub_10025C9B0(&qword_1006D7290);
    v23 = 0;
    v26 = sub_1002641E8(0);
    v24 = v26;
    v27 = sub_1002641E8(v23);
    v58 = v25;
    v57 = v26;
    v56 = v27;
    v28 = 0;
    v29 = &v58;
    sub_10026423C(0, &v58);
    sub_10026423C(v28, v29);
    v55 = v54;
    v30 = &v16;
    __chkstk_darwin(&v16);
    v31 = &v16 - 3;
    *(&v16 - 4) = v9;
    *(&v16 - 3) = &v57;
    *(&v16 - 2) = &v56;
    v32 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v33 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v49, v50, "#SiriMail DraftMessageEntity.init(from emMessage:)", v21, 2u);
      v19 = 0;
      sub_10026429C(v24);
      sub_10026429C(v27);
      UnsafeMutablePointer.deallocate()();

      v20 = v33;
    }
  }

  else
  {

    v20 = v35;
  }

  (*(v43 + 8))(v44, v41);
  v10 = v40;
  MailMessageEntityID.init(using:)();
  *&v16 = MailMessageEntityID.encodedID.getter();
  *(&v16 + 1) = v11;
  (*(v38 + 8))(v39, v36);
  v66 = v16;
  v71 = v16;
  v75 = v70;
  v74 = v69;
  v73 = v68;
  v72 = v67;
  v17 = 0;
  v18 = type metadata accessor for IntentFile();
  _allocateUninitializedArray<A>(_:)();
  sub_1002CD004();
  v60 = v66;
  v64 = v70;
  v63 = v69;
  v62 = v68;
  v61 = v67;
  sub_1002CD078(&v60, v59);

  sub_10028D6D0();
  v12 = v34;
  *v34 = v60;
  result = v61;
  v14 = v62;
  v15 = v63;
  *(v12 + 8) = v64;
  v12[3] = v15;
  v12[2] = v14;
  v12[1] = result;
  return result;
}

__int128 *sub_1002CD9C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v292 = a3;
  v294 = a2;
  v293 = a1;
  v286 = a4;
  v312 = 0;
  v373 = 0;
  v372 = 0u;
  v371 = 0u;
  v370 = 0u;
  v369 = 0u;
  v368 = 0;
  v367 = 0;
  v366 = 0;
  v365 = 0;
  v287 = 0;
  v363 = 0;
  v361 = 0;
  v360 = 0;
  v352 = 0;
  v351 = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v340 = 0;
  v337 = 0;
  v336 = 0;
  v331 = 0;
  v330 = 0;
  v325 = 0;
  v324 = 0;
  v288 = type metadata accessor for UUID();
  v289 = *(v288 - 8);
  v290 = v289;
  __chkstk_darwin(0);
  v291 = v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v307 = type metadata accessor for Logger();
  v295 = v307;
  v296 = *(v307 - 8);
  v306 = v296;
  v297 = v296;
  v300 = *(v296 + 64);
  v5 = __chkstk_darwin(v293);
  v302 = (v300 + 15) & 0xFFFFFFFFFFFFFFF0;
  v298 = v64 - v302;
  v6 = __chkstk_darwin(v5);
  v299 = v64 - v302;
  v7 = __chkstk_darwin(v6);
  v301 = v64 - v302;
  v8 = __chkstk_darwin(v7);
  v305 = v64 - v302;
  v303 = v64 - v302;
  v368 = v8;
  v366 = v9;
  v367 = v10;
  v304 = sub_10025C9B0(&qword_1006D7F38);
  *&v370 = EntityProperty<>.init()();
  *(&v370 + 1) = EntityProperty<>.init()();
  *&v371 = EntityProperty<>.init()();
  sub_10025C9B0(&unk_1006DA2D0);
  *(&v371 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F40);
  *&v372 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F48);
  *(&v372 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F50);
  sub_100264788();
  v11 = EntityProperty<>.init()();
  v12 = v305;
  v373 = v11;
  v13 = Logger.appIntentLogger.unsafeMutableAddressor();
  v308 = *(v306 + 16);
  v309 = (v306 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v308(v12, v13, v307);
  v315 = Logger.logObject.getter();
  v310 = v315;
  v314 = static os_log_type_t.info.getter();
  v311 = v314;
  v313 = sub_10025C9B0(&unk_1006D7720);
  v316 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v315, v314))
  {
    v14 = v287;
    v277 = static UnsafeMutablePointer.allocate(capacity:)();
    v273 = v277;
    v274 = sub_10025C9B0(&qword_1006D7290);
    v275 = 0;
    v278 = sub_1002641E8(0);
    v276 = v278;
    v279 = sub_1002641E8(v275);
    v320[0] = v277;
    v319 = v278;
    v318 = v279;
    v280 = 0;
    v281 = v320;
    sub_10026423C(0, v320);
    sub_10026423C(v280, v281);
    v317 = v316;
    v282 = v64;
    __chkstk_darwin(v64);
    v283 = &v64[-6];
    v60 = v15;
    v61 = &v319;
    v62 = &v318;
    v284 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v285 = v14;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v310, v311, "#SiriMail DraftMessageEntity.init(legacyMessage:existingId:)", v273, 2u);
      v271 = 0;
      sub_10026429C(v276);
      sub_10026429C(v279);
      UnsafeMutablePointer.deallocate()();

      v272 = v285;
    }
  }

  else
  {

    v272 = v287;
  }

  v267 = v272;

  v268 = *(v297 + 8);
  v269 = (v297 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v268(v303, v295);
  v270 = [v293 headers];
  v365 = v270;

  if (v292)
  {
    v265 = v294;
    v266 = v292;
    v17 = v301;
    v257 = v292;
    v258 = v294;
    v324 = v294;
    v325 = v292;
    v18 = Logger.appIntentLogger.unsafeMutableAddressor();
    v308(v17, v18, v295);
    v262 = Logger.logObject.getter();
    v259 = v262;
    v261 = static os_log_type_t.info.getter();
    v260 = v261;
    v263 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v262, v261))
    {
      v20 = v267;
      v248 = static UnsafeMutablePointer.allocate(capacity:)();
      v244 = v248;
      v245 = sub_10025C9B0(&qword_1006D7290);
      v246 = 0;
      v249 = sub_1002641E8(0);
      v247 = v249;
      v250 = sub_1002641E8(v246);
      v323 = v248;
      v322 = v249;
      v321 = v250;
      v251 = 0;
      v252 = &v323;
      sub_10026423C(0, &v323);
      sub_10026423C(v251, v252);
      v320[1] = v263;
      v253 = v64;
      __chkstk_darwin(v64);
      v254 = &v64[-6];
      v60 = v21;
      v61 = &v322;
      v62 = &v321;
      v255 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v256 = v20;
      if (v20)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v259, v260, "#SiriMail DraftMessageEntity init use existingId", v244, 2u);
        v242 = 0;
        sub_10026429C(v247);
        sub_10026429C(v250);
        UnsafeMutablePointer.deallocate()();

        v243 = v256;
      }
    }

    else
    {

      v243 = v267;
    }

    v240 = v243;

    v268(v301, v295);

    *&v369 = v258;
    *(&v369 + 1) = v257;

    v241 = v240;
  }

  else
  {
    v16 = v270;
    if (v270)
    {
      v264 = v270;
      v236 = v270;
      v234 = ECMessageHeaderKeyMessageID;
      v22 = ECMessageHeaderKeyMessageID;
      v237 = [v236 firstMessageIDForKey:v234];
      v235 = v237;

      if (v237)
      {
        v233 = v235;
        v228 = v235;
        v229 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v230 = v23;

        v231 = v229;
        v232 = v230;
      }

      else
      {
        v231 = 0;
        v232 = 0;
      }

      v238 = v231;
      v239 = v232;
    }

    else
    {
      v238 = 0;
      v239 = 0;
    }

    v226 = v239;
    v227 = v238;
    if (v239)
    {
      v224 = v227;
      v225 = v226;
      v25 = v299;
      v216 = v226;
      v217 = v227;
      v330 = v227;
      v331 = v226;
      v26 = Logger.appIntentLogger.unsafeMutableAddressor();
      v308(v25, v26, v295);
      v221 = Logger.logObject.getter();
      v218 = v221;
      v220 = static os_log_type_t.info.getter();
      v219 = v220;
      v222 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v221, v220))
      {
        v28 = v267;
        v207 = static UnsafeMutablePointer.allocate(capacity:)();
        v203 = v207;
        v204 = sub_10025C9B0(&qword_1006D7290);
        v205 = 0;
        v208 = sub_1002641E8(0);
        v206 = v208;
        v209 = sub_1002641E8(v205);
        v329 = v207;
        v328 = v208;
        v327 = v209;
        v210 = 0;
        v211 = &v329;
        sub_10026423C(0, &v329);
        sub_10026423C(v210, v211);
        v326 = v222;
        v212 = v64;
        __chkstk_darwin(v64);
        v213 = &v64[-6];
        v60 = v29;
        v61 = &v328;
        v62 = &v327;
        v214 = sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        v215 = v28;
        if (v28)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&_mh_execute_header, v218, v219, "#SiriMail DraftMessageEntity init found messageId", v203, 2u);
          v201 = 0;
          sub_10026429C(v206);
          sub_10026429C(v209);
          UnsafeMutablePointer.deallocate()();

          v202 = v215;
        }
      }

      else
      {

        v202 = v267;
      }

      v199 = v202;

      v268(v299, v295);

      *&v369 = v217;
      *(&v369 + 1) = v216;

      v200 = v199;
    }

    else
    {
      v24 = v270;
      if (v270)
      {
        v223 = v270;
        v195 = v270;
        v193 = ECMessageHeaderKeyXUniversallyUniqueIdentifier;
        v30 = ECMessageHeaderKeyXUniversallyUniqueIdentifier;
        v196 = [v195 firstMessageIDForKey:v193];
        v194 = v196;

        if (v196)
        {
          v192 = v194;
          v187 = v194;
          v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v189 = v31;

          v190 = v188;
          v191 = v189;
        }

        else
        {
          v190 = 0;
          v191 = 0;
        }

        v197 = v190;
        v198 = v191;
      }

      else
      {
        v197 = 0;
        v198 = 0;
      }

      v185 = v198;
      v186 = v197;
      if (v198)
      {
        v183 = v186;
        v184 = v185;
        v33 = v298;
        v174 = v185;
        v175 = v186;
        v336 = v186;
        v337 = v185;
        v34 = Logger.appIntentLogger.unsafeMutableAddressor();
        v308(v33, v34, v295);
        v179 = Logger.logObject.getter();
        v176 = v179;
        v178 = static os_log_type_t.info.getter();
        v177 = v178;
        v180 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v179, v178))
        {
          v36 = v267;
          v165 = static UnsafeMutablePointer.allocate(capacity:)();
          v161 = v165;
          v162 = sub_10025C9B0(&qword_1006D7290);
          v163 = 0;
          v166 = sub_1002641E8(0);
          v164 = v166;
          v167 = sub_1002641E8(v163);
          v335 = v165;
          v334 = v166;
          v333 = v167;
          v168 = 0;
          v169 = &v335;
          sub_10026423C(0, &v335);
          sub_10026423C(v168, v169);
          v332 = v180;
          v170 = v64;
          __chkstk_darwin(v64);
          v171 = &v64[-6];
          v60 = v37;
          v61 = &v334;
          v62 = &v333;
          v172 = sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          v173 = v36;
          if (v36)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&_mh_execute_header, v176, v177, "#SiriMail DraftMessageEntity init found uuid", v161, 2u);
            v159 = 0;
            sub_10026429C(v164);
            sub_10026429C(v167);
            UnsafeMutablePointer.deallocate()();

            v160 = v173;
          }
        }

        else
        {

          v160 = v267;
        }

        v158 = v160;

        v268(v298, v295);

        *&v369 = v175;
        *(&v369 + 1) = v174;

        v182 = v158;
      }

      else
      {
        UUID.init()();
        *&v181 = UUID.uuidString.getter();
        *(&v181 + 1) = v32;
        (*(v290 + 8))(v291, v288);
        v369 = v181;
        v182 = v267;
      }

      v200 = v182;
    }

    v241 = v200;
  }

  v38 = v241;
  v146 = [v293 to];
  v364 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  KeyPath = swift_getKeyPath();
  v147 = KeyPath;

  v149 = v64;
  v39 = __chkstk_darwin(KeyPath);
  v152 = &v60;
  v62 = sub_1002D3DBC;
  v63 = v39;
  v153 = sub_10025C9B0(&unk_1006D69B0);
  v150 = v153;
  v154 = type metadata accessor for IntentPerson();
  v151 = v154;
  v155 = sub_1002688A0();
  v40 = Sequence.compactMap<A>(_:)();
  v156 = v38;
  v157 = v40;
  if (v38)
  {

    __break(1u);
    goto LABEL_96;
  }

  v142 = v157;

  sub_100264880();

  v363 = v142;
  v362 = v142;
  v144 = sub_10025C9B0(&unk_1006D7160);
  v143 = v144;
  v145 = sub_1002D3DF0();
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    v399 = v369;
    v403 = v373;
    v402 = v372;
    v401 = v371;
    v400 = v370;

    sub_1002CCA28();
  }

  v141 = [v293 cc];
  if (v141)
  {
    v140 = v141;
    v137 = v141;
    v138 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v139 = v138;
  }

  else
  {
    v139 = 0;
  }

  v136 = v139;
  if (!v139)
  {
    v133 = 0;
    v134 = v156;
    goto LABEL_58;
  }

  v135 = v136;
  v41 = v156;
  v338 = v136;
  v129 = swift_getKeyPath();
  v128 = v129;

  v130 = v64;
  v42 = __chkstk_darwin(v129);
  v62 = sub_1002D3DBC;
  v63 = v42;
  v43 = Sequence.compactMap<A>(_:)();
  v131 = v41;
  v132 = v43;
  if (v41)
  {
LABEL_96:

    __break(1u);
    goto LABEL_97;
  }

  v127 = v132;

  sub_100264880();
  v133 = v127;
  v134 = v131;
LABEL_58:
  v125 = v134;
  v126 = v133;
  if (v133)
  {
    v124 = v126;
    v123 = v126;
    v340 = v126;
    v339 = v126;
    v44 = Collection.isEmpty.getter();
    if (v44)
    {
    }

    else
    {
      v394 = v369;
      v398 = v373;
      v397 = v372;
      v396 = v371;
      v395 = v370;
      sub_1002CCB50();
    }
  }

  v122 = [v293 bcc];
  if (v122)
  {
    v121 = v122;
    v118 = v122;
    v119 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v120 = v119;
  }

  else
  {
    v120 = 0;
  }

  v117 = v120;
  if (v120)
  {
    v116 = v117;
    v45 = v125;
    v341 = v117;
    v110 = swift_getKeyPath();
    v109 = v110;

    v111 = v64;
    v46 = __chkstk_darwin(v110);
    v62 = sub_1002D3DBC;
    v63 = v46;
    v47 = Sequence.compactMap<A>(_:)();
    v112 = v45;
    v113 = v47;
    if (!v45)
    {
      v108 = v113;

      sub_100264880();
      v114 = v108;
      v115 = v112;
      goto LABEL_72;
    }

LABEL_97:

    __break(1u);
    return result;
  }

  v114 = 0;
  v115 = v125;
LABEL_72:
  v107 = v114;
  if (v114)
  {
    v106 = v107;
    v105 = v107;
    v343 = v107;
    v342 = v107;
    v48 = Collection.isEmpty.getter();
    if (v48)
    {
    }

    else
    {
      v389 = v369;
      v393 = v373;
      v392 = v372;
      v391 = v371;
      v390 = v370;
      sub_1002CCC78();
    }
  }

  v99 = [v293 subject];
  v102 = [v99 subjectString];
  v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v49;
  v100 = v103;
  v101 = v49;
  v360 = v103;
  v361 = v49;

  if ((String.isEmpty.getter() & 1) == 0)
  {
    v384 = v369;
    v388 = v373;
    v387 = v372;
    v386 = v371;
    v385 = v370;

    sub_1002CCD44();
  }

  v359 = [v293 account];
  v98 = v359 != 0;
  v97 = v98;
  sub_10026A58C(&v359);
  if (v97)
  {
    v96 = [v293 account];
    if (v96)
    {
      v95 = v96;
    }

    else
    {
      LODWORD(v62) = 0;
      v61 = 156;
      LOBYTE(v60) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v93 = v95;
    v94 = [v95 identifier];
    if (v94)
    {
      v92 = v94;
      v87 = v94;
      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v50;

      v90 = v88;
      v91 = v89;
    }

    else
    {
      v90 = 0;
      v91 = 0;
    }

    v85 = v91;
    v86 = v90;
    if (v91)
    {
      v83 = v86;
      v84 = v85;
      v74 = v85;
      v72 = v86;
      v351 = v86;
      v352 = v85;

      v75 = &type metadata for String;
      v71 = _allocateUninitializedArray<A>(_:)();
      v73 = v51;

      v52 = v71;
      v53 = v73;
      v54 = v74;
      *v73 = v72;
      v53[1] = v54;
      sub_1002612B0();
      v76 = v52;
      v78 = sub_10025E60C();
      v77 = v78;

      v350 = v78;
      v79 = sub_10025C9B0(&unk_1006D80D0);
      sub_1002D3E78();
      Collection.first.getter();
      v80 = v347;
      v81 = v348;
      v82 = v349;
      if (v347)
      {
        v68 = v80;
        v69 = v81;
        v70 = v82;
        v67 = v82;
        v66 = v81;
        v65 = v80;
        v344 = v80;
        v345 = v81;
        v346 = v82;

        v379 = v369;
        v383 = v373;
        v382 = v372;
        v381 = v371;
        v380 = v370;
        sub_1002CD24C(v65);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v374 = v369;
  v378 = v373;
  v377 = v372;
  v376 = v371;
  v375 = v370;
  v64[1] = 0;
  v64[2] = type metadata accessor for IntentFile();
  _allocateUninitializedArray<A>(_:)();
  sub_1002CD004();

  v354 = v369;
  v358 = v373;
  v357 = v372;
  v356 = v371;
  v355 = v370;
  sub_1002CD078(&v354, v353);

  result = &v369;
  sub_10028D6D0();
  v56 = v286;
  *v286 = v354;
  v57 = v355;
  v58 = v356;
  v59 = v357;
  *(v56 + 8) = v358;
  v56[3] = v59;
  v56[2] = v58;
  v56[1] = v57;
  return result;
}

uint64_t sub_1002CF5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v10 = type metadata accessor for IntentPerson();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v4);
  v9 = &v4 - v5;
  sub_100268860(v2, v12);
  v11 = v12[1];
  String.intentPerson.getter();
  (*(v6 + 32))(v8, v9, v10);
}

uint64_t sub_1002CF6CC()
{

  swift_getAtKeyPath();
  sub_100268744();
}

uint64_t sub_1002CF73C@<X0>(void *a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  v12 = a3;
  v6 = a1;
  v7 = a2;
  v11 = type metadata accessor for IntentPerson();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v8 = &v4 - v5;
  v7(*v6, v6[1]);
  (*(v9 + 32))(v12, v8, v11);
  return (*(v9 + 56))(v12, 0, 1, v11);
}

uint64_t sub_1002CF8C8()
{
  sub_1002D3F00();
  v0 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v1 = *(v3 + 8);

  return v1(v0);
}

uint64_t sub_1002CF958()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006EFEE8);
  sub_1000208F4(v1, qword_1006EFEE8);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_1002CF9B4()
{
  if (qword_1006D5E50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006EFEE8);
}

uint64_t sub_1002CFA20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002CF9B4();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_1002CFA84()
{
  sub_1002D3F7C();
  result = sub_10025C704();
  qword_1006EFF00 = result;
  return result;
}

uint64_t *sub_1002CFAB8()
{
  if (qword_1006D5E58 != -1)
  {
    swift_once();
  }

  return &qword_1006EFF00;
}

void *sub_1002CFB18()
{
  v1 = *sub_1002CFAB8();
  _objc_retain(v1);
  return v1;
}

uint64_t sub_1002CFB50(uint64_t a1)
{
  v1[41] = a1;
  v1[27] = v1;
  v1[28] = 0;
  v1[29] = 0;
  v1[17] = 0;
  v1[18] = 0;
  v1[21] = 0;
  v1[22] = 0;
  sub_10025C9B0(&qword_1006D7DF0);
  v1[42] = swift_task_alloc();
  v2 = type metadata accessor for MailMessageEntityID();
  v1[43] = v2;
  v1[44] = *(v2 - 8);
  v1[45] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[46] = v3;
  v1[47] = *(v3 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[28] = a1;
  type metadata accessor for MainActor();
  v1[50] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[51] = v7;
  v1[52] = v4;

  return _swift_task_switch(sub_1002CFD5C, v7);
}

uint64_t sub_1002CFD5C()
{
  v64 = v0[41];
  v0[27] = v0;
  v63 = swift_allocObject();
  v0[53] = v63;
  v0[29] = v63 + 16;
  *(v63 + 16) = _allocateUninitializedArray<A>(_:)();

  v0[30] = v64;
  sub_10025C9B0(&unk_1006D69B0);
  sub_1002B76F0();
  Collection<>.makeIterator()();
  v65 = 0;
  while (1)
  {
    sub_10025C9B0(&qword_1006D7F98);
    IndexingIterator.next()();
    v60 = *(v62 + 152);
    v61 = *(v62 + 160);
    *(v62 + 432) = v61;
    if (!v61)
    {
      break;
    }

    *(v62 + 168) = v60;
    *(v62 + 176) = v61;
    *(v62 + 184) = v60;
    *(v62 + 192) = v61;
    *(v62 + 200) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://", 0xFuLL, 1);
    sub_1002D3A78();
    sub_1002D3AF0();
    v58 = BidirectionalCollection<>.starts<A>(with:)();
    sub_100268744();
    if (v58)
    {
      v1 = *(v62 + 392);
      v54 = *(v62 + 368);
      v53 = *(v62 + 376);
      v2 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v53 + 16))(v1, v2, v54);
      v56 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      sub_10025C9B0(&unk_1006D7720);
      v57 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v56, v55))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v50 = sub_1002641E8(0);
        v51 = sub_1002641E8(0);
        *(v62 + 296) = buf;
        *(v62 + 304) = v50;
        *(v62 + 312) = v51;
        sub_10026423C(0, (v62 + 296));
        sub_10026423C(0, (v62 + 296));
        *(v62 + 320) = v57;
        v52 = swift_task_alloc();
        v52[2] = v62 + 296;
        v52[3] = v62 + 304;
        v52[4] = v62 + 312;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v56, v55, "#SiriMail DraftMessageEntity fetching temporary draft message", buf, 2u);
        sub_10026429C(v50);
        sub_10026429C(v51);
        UnsafeMutablePointer.deallocate()();

        v47 = 0;
        v48 = 0;
      }

      else
      {

        v47 = v65;
        v48 = v59;
      }

      v42 = *(v62 + 424);
      v40 = *(v62 + 392);
      v41 = *(v62 + 368);
      v39 = *(v62 + 376);
      _objc_release(v56);
      (*(v39 + 8))(v40, v41);
      v44 = [objc_opt_self() mainThreadScheduler];
      swift_getObjectType();

      v3 = swift_allocObject();
      v3[2] = v60;
      v3[3] = v61;
      v3[4] = v42;
      *(v62 + 48) = sub_1002D3FE0;
      *(v62 + 56) = v3;
      *(v62 + 16) = _NSConcreteStackBlock;
      *(v62 + 24) = 1107296256;
      *(v62 + 28) = 0;
      *(v62 + 32) = sub_1002AEFF8;
      *(v62 + 40) = &unk_100659AF0;
      aBlock = _Block_copy((v62 + 16));

      [v44 performBlock:aBlock];
      _Block_release(aBlock);
      swift_unknownObjectRelease();
      v45 = v47;
      v46 = v48;
    }

    else
    {
      v38 = *(v62 + 344);
      v37 = *(v62 + 336);
      v36 = *(v62 + 352);

      MailMessageEntityID.init(with:)();
      if ((*(v36 + 48))(v37, 1, v38) == 1)
      {
        sub_1002C1698(*(v62 + 336));
        v34 = v65;
        v35 = v59;
      }

      else
      {
        v4 = *(v62 + 384);
        v30 = *(v62 + 368);
        v29 = *(v62 + 376);
        (*(*(v62 + 352) + 32))(*(v62 + 360), *(v62 + 336), *(v62 + 344));
        v5 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v29 + 16))(v4, v5, v30);
        oslog = Logger.logObject.getter();
        v31 = static os_log_type_t.info.getter();
        sub_10025C9B0(&unk_1006D7720);
        v33 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(oslog, v31))
        {
          v25 = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v26 = sub_1002641E8(0);
          v27 = sub_1002641E8(0);
          *(v62 + 264) = v25;
          *(v62 + 272) = v26;
          *(v62 + 280) = v27;
          sub_10026423C(0, (v62 + 264));
          sub_10026423C(0, (v62 + 264));
          *(v62 + 288) = v33;
          v28 = swift_task_alloc();
          v28[2] = v62 + 264;
          v28[3] = v62 + 272;
          v28[4] = v62 + 280;
          sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();

          _os_log_impl(&_mh_execute_header, oslog, v31, "#SiriMail DraftMessageEntity fetching drafts using MailMessageEntityID", v25, 2u);
          sub_10026429C(v26);
          sub_10026429C(v27);
          UnsafeMutablePointer.deallocate()();

          v23 = 0;
          v24 = 0;
        }

        else
        {

          v23 = v65;
          v24 = v59;
        }

        v20 = *(v62 + 384);
        v21 = *(v62 + 368);
        v19 = *(v62 + 376);
        _objc_release(oslog);
        (*(v19 + 8))(v20, v21);
        MailMessageEntityID.version.getter();
        static MailMessageEntityID.Version.mailEntityVersion.getter();
        v22 = static String.== infix(_:_:)();

        if (v22)
        {
          type metadata accessor for CSQueryBuilder();
          CSQueryBuilder.__allocating_init()();
          MailMessageEntityID.mailMessageID.getter();
          dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

          v18 = dispatch thunk of CSQueryBuilder.build()();
          v17 = v6;
          *(v62 + 440) = v6;

          v7 = swift_task_alloc();
          *(v62 + 448) = v7;
          *v7 = *(v62 + 216);
          v7[1] = sub_1002D0CAC;

          return sub_1002B86FC(v18, v17, v60, v61);
        }

        MailMessageEntityID.version.getter();
        static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
        v16 = static String.== infix(_:_:)();

        if (v16)
        {
          type metadata accessor for CSQueryBuilder();
          CSQueryBuilder.__allocating_init()();
          MailMessageEntityID.encodedID.getter();
          dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

          v15 = dispatch thunk of CSQueryBuilder.build()();
          v14 = v9;
          *(v62 + 472) = v9;

          v10 = swift_task_alloc();
          *(v62 + 480) = v10;
          *v10 = *(v62 + 216);
          v10[1] = sub_1002D1D68;

          return sub_1002B890C(v15, v14, v60, v61);
        }

        (*(*(v62 + 352) + 8))(*(v62 + 360), *(v62 + 344));
        v34 = v23;
        v35 = v24;
      }

      v45 = v34;
      v46 = v35;
    }

    v65 = v45;
    v59 = v46;
  }

  v12 = (*(v62 + 424) + 16);
  sub_100264880();
  swift_beginAccess();
  v13 = *v12;

  swift_endAccess();

  v11 = *(*(v62 + 216) + 8);

  return v11(v13);
}

uint64_t sub_1002D0CAC(uint64_t a1)
{
  v6 = *v2;
  v6[27] = *v2;
  v6[57] = a1;
  v6[58] = v1;

  if (v1)
  {
    v3 = v6[51];
    v4 = sub_1002D2E2C;
  }

  else
  {

    v3 = v6[51];
    v4 = sub_1002D0E48;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1002D0E48()
{
  v1 = v0[57];
  v0[27] = v0;
  v0[32] = v1;
  swift_beginAccess();
  sub_10025C9B0(&qword_1006D74E0);
  sub_10028F3B4();
  Array.append<A>(contentsOf:)();
  swift_endAccess();
  v64 = v0[58];
  while (2)
  {
    (*(*(v63 + 352) + 8))(*(v63 + 360), *(v63 + 344));
    v36 = v64;
    v37 = v15;
    while (2)
    {
      v47 = v36;
      for (i = v37; ; i = v50)
      {

        sub_10025C9B0(&qword_1006D7F98);
        IndexingIterator.next()();
        v60 = *(v63 + 152);
        v61 = *(v63 + 160);
        *(v63 + 432) = v61;
        if (!v61)
        {
          v13 = (*(v63 + 424) + 16);
          sub_100264880();
          swift_beginAccess();
          v14 = *v13;

          swift_endAccess();

          v12 = *(*(v63 + 216) + 8);

          return v12(v14);
        }

        *(v63 + 168) = v60;
        *(v63 + 176) = v61;
        *(v63 + 184) = v60;
        *(v63 + 192) = v61;
        *(v63 + 200) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://", 0xFuLL, 1);
        sub_1002D3A78();
        sub_1002D3AF0();
        v62 = BidirectionalCollection<>.starts<A>(with:)();
        sub_100268744();
        if ((v62 & 1) == 0)
        {
          break;
        }

        v2 = *(v63 + 392);
        v56 = *(v63 + 368);
        v55 = *(v63 + 376);
        v3 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v55 + 16))(v2, v3, v56);
        v58 = Logger.logObject.getter();
        v57 = static os_log_type_t.info.getter();
        sub_10025C9B0(&unk_1006D7720);
        v59 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v58, v57))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v52 = sub_1002641E8(0);
          v53 = sub_1002641E8(0);
          *(v63 + 296) = buf;
          *(v63 + 304) = v52;
          *(v63 + 312) = v53;
          sub_10026423C(0, (v63 + 296));
          sub_10026423C(0, (v63 + 296));
          *(v63 + 320) = v59;
          v54 = swift_task_alloc();
          v54[2] = v63 + 296;
          v54[3] = v63 + 304;
          v54[4] = v63 + 312;
          sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          if (v47)
          {
          }

          _os_log_impl(&_mh_execute_header, v58, v57, "#SiriMail DraftMessageEntity fetching temporary draft message", buf, 2u);
          sub_10026429C(v52);
          sub_10026429C(v53);
          UnsafeMutablePointer.deallocate()();

          v49 = 0;
          v50 = 0;
        }

        else
        {

          v49 = v47;
          v50 = i;
        }

        v44 = *(v63 + 424);
        v42 = *(v63 + 392);
        v43 = *(v63 + 368);
        v41 = *(v63 + 376);
        _objc_release(v58);
        (*(v41 + 8))(v42, v43);
        v46 = [objc_opt_self() mainThreadScheduler];
        swift_getObjectType();

        v4 = swift_allocObject();
        v4[2] = v60;
        v4[3] = v61;
        v4[4] = v44;
        *(v63 + 48) = sub_1002D3FE0;
        *(v63 + 56) = v4;
        *(v63 + 16) = _NSConcreteStackBlock;
        *(v63 + 24) = 1107296256;
        *(v63 + 28) = 0;
        *(v63 + 32) = sub_1002AEFF8;
        *(v63 + 40) = &unk_100659AF0;
        aBlock = _Block_copy((v63 + 16));

        [v46 performBlock:aBlock];
        _Block_release(aBlock);
        swift_unknownObjectRelease();
        v47 = v49;
      }

      v40 = *(v63 + 344);
      v39 = *(v63 + 336);
      v38 = *(v63 + 352);

      MailMessageEntityID.init(with:)();
      if ((*(v38 + 48))(v39, 1, v40) == 1)
      {
        sub_1002C1698(*(v63 + 336));
        v36 = v47;
        v37 = i;
        continue;
      }

      break;
    }

    v5 = *(v63 + 384);
    v32 = *(v63 + 368);
    v31 = *(v63 + 376);
    (*(*(v63 + 352) + 32))(*(v63 + 360), *(v63 + 336), *(v63 + 344));
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v31 + 16))(v5, v6, v32);
    oslog = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v35 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v33))
    {
      v27 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v28 = sub_1002641E8(0);
      v29 = sub_1002641E8(0);
      *(v63 + 264) = v27;
      *(v63 + 272) = v28;
      *(v63 + 280) = v29;
      sub_10026423C(0, (v63 + 264));
      sub_10026423C(0, (v63 + 264));
      *(v63 + 288) = v35;
      v30 = swift_task_alloc();
      v30[2] = v63 + 264;
      v30[3] = v63 + 272;
      v30[4] = v63 + 280;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v47)
      {
      }

      _os_log_impl(&_mh_execute_header, oslog, v33, "#SiriMail DraftMessageEntity fetching drafts using MailMessageEntityID", v27, 2u);
      sub_10026429C(v28);
      sub_10026429C(v29);
      UnsafeMutablePointer.deallocate()();

      v25 = 0;
      v26 = 0;
    }

    else
    {

      v25 = v47;
      v26 = i;
    }

    v22 = *(v63 + 384);
    v23 = *(v63 + 368);
    v21 = *(v63 + 376);
    _objc_release(oslog);
    (*(v21 + 8))(v22, v23);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v24 = static String.== infix(_:_:)();

    if (v24)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v20 = dispatch thunk of CSQueryBuilder.build()();
      v19 = v8;
      *(v63 + 440) = v8;

      v9 = swift_task_alloc();
      *(v63 + 448) = v9;
      *v9 = *(v63 + 216);
      v9[1] = sub_1002D0CAC;

      return sub_1002B86FC(v20, v19, v60, v61);
    }

    else
    {
      MailMessageEntityID.version.getter();
      static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
      v18 = static String.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {
        v64 = v25;
        v15 = v26;
        continue;
      }

      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v17 = dispatch thunk of CSQueryBuilder.build()();
      v16 = v10;
      *(v63 + 472) = v10;

      v11 = swift_task_alloc();
      *(v63 + 480) = v11;
      *v11 = *(v63 + 216);
      v11[1] = sub_1002D1D68;

      return sub_1002B890C(v17, v16, v60, v61);
    }
  }
}

uint64_t sub_1002D1D68(uint64_t a1)
{
  v6 = *v2;
  v6[27] = *v2;
  v6[61] = a1;
  v6[62] = v1;

  if (v1)
  {
    v3 = v6[51];
    v4 = sub_1002D2F94;
  }

  else
  {

    v3 = v6[51];
    v4 = sub_1002D1F04;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1002D1F04()
{
  v1 = v0[61];
  v0[27] = v0;
  v0[31] = v1;
  swift_beginAccess();
  sub_10025C9B0(&qword_1006D74E0);
  sub_10028F3B4();
  Array.append<A>(contentsOf:)();
  swift_endAccess();
  v64 = v0[62];
  while (2)
  {
    (*(*(v63 + 352) + 8))(*(v63 + 360), *(v63 + 344));
    v36 = v64;
    v37 = v15;
    while (2)
    {
      v47 = v36;
      for (i = v37; ; i = v50)
      {

        sub_10025C9B0(&qword_1006D7F98);
        IndexingIterator.next()();
        v60 = *(v63 + 152);
        v61 = *(v63 + 160);
        *(v63 + 432) = v61;
        if (!v61)
        {
          v13 = (*(v63 + 424) + 16);
          sub_100264880();
          swift_beginAccess();
          v14 = *v13;

          swift_endAccess();

          v12 = *(*(v63 + 216) + 8);

          return v12(v14);
        }

        *(v63 + 168) = v60;
        *(v63 + 176) = v61;
        *(v63 + 184) = v60;
        *(v63 + 192) = v61;
        *(v63 + 200) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://", 0xFuLL, 1);
        sub_1002D3A78();
        sub_1002D3AF0();
        v62 = BidirectionalCollection<>.starts<A>(with:)();
        sub_100268744();
        if ((v62 & 1) == 0)
        {
          break;
        }

        v2 = *(v63 + 392);
        v56 = *(v63 + 368);
        v55 = *(v63 + 376);
        v3 = Logger.appIntentLogger.unsafeMutableAddressor();
        (*(v55 + 16))(v2, v3, v56);
        v58 = Logger.logObject.getter();
        v57 = static os_log_type_t.info.getter();
        sub_10025C9B0(&unk_1006D7720);
        v59 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v58, v57))
        {
          buf = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v52 = sub_1002641E8(0);
          v53 = sub_1002641E8(0);
          *(v63 + 296) = buf;
          *(v63 + 304) = v52;
          *(v63 + 312) = v53;
          sub_10026423C(0, (v63 + 296));
          sub_10026423C(0, (v63 + 296));
          *(v63 + 320) = v59;
          v54 = swift_task_alloc();
          v54[2] = v63 + 296;
          v54[3] = v63 + 304;
          v54[4] = v63 + 312;
          sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();
          if (v47)
          {
          }

          _os_log_impl(&_mh_execute_header, v58, v57, "#SiriMail DraftMessageEntity fetching temporary draft message", buf, 2u);
          sub_10026429C(v52);
          sub_10026429C(v53);
          UnsafeMutablePointer.deallocate()();

          v49 = 0;
          v50 = 0;
        }

        else
        {

          v49 = v47;
          v50 = i;
        }

        v44 = *(v63 + 424);
        v42 = *(v63 + 392);
        v43 = *(v63 + 368);
        v41 = *(v63 + 376);
        _objc_release(v58);
        (*(v41 + 8))(v42, v43);
        v46 = [objc_opt_self() mainThreadScheduler];
        swift_getObjectType();

        v4 = swift_allocObject();
        v4[2] = v60;
        v4[3] = v61;
        v4[4] = v44;
        *(v63 + 48) = sub_1002D3FE0;
        *(v63 + 56) = v4;
        *(v63 + 16) = _NSConcreteStackBlock;
        *(v63 + 24) = 1107296256;
        *(v63 + 28) = 0;
        *(v63 + 32) = sub_1002AEFF8;
        *(v63 + 40) = &unk_100659AF0;
        aBlock = _Block_copy((v63 + 16));

        [v46 performBlock:aBlock];
        _Block_release(aBlock);
        swift_unknownObjectRelease();
        v47 = v49;
      }

      v40 = *(v63 + 344);
      v39 = *(v63 + 336);
      v38 = *(v63 + 352);

      MailMessageEntityID.init(with:)();
      if ((*(v38 + 48))(v39, 1, v40) == 1)
      {
        sub_1002C1698(*(v63 + 336));
        v36 = v47;
        v37 = i;
        continue;
      }

      break;
    }

    v5 = *(v63 + 384);
    v32 = *(v63 + 368);
    v31 = *(v63 + 376);
    (*(*(v63 + 352) + 32))(*(v63 + 360), *(v63 + 336), *(v63 + 344));
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v31 + 16))(v5, v6, v32);
    oslog = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v35 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v33))
    {
      v27 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v28 = sub_1002641E8(0);
      v29 = sub_1002641E8(0);
      *(v63 + 264) = v27;
      *(v63 + 272) = v28;
      *(v63 + 280) = v29;
      sub_10026423C(0, (v63 + 264));
      sub_10026423C(0, (v63 + 264));
      *(v63 + 288) = v35;
      v30 = swift_task_alloc();
      v30[2] = v63 + 264;
      v30[3] = v63 + 272;
      v30[4] = v63 + 280;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v47)
      {
      }

      _os_log_impl(&_mh_execute_header, oslog, v33, "#SiriMail DraftMessageEntity fetching drafts using MailMessageEntityID", v27, 2u);
      sub_10026429C(v28);
      sub_10026429C(v29);
      UnsafeMutablePointer.deallocate()();

      v25 = 0;
      v26 = 0;
    }

    else
    {

      v25 = v47;
      v26 = i;
    }

    v22 = *(v63 + 384);
    v23 = *(v63 + 368);
    v21 = *(v63 + 376);
    _objc_release(oslog);
    (*(v21 + 8))(v22, v23);
    MailMessageEntityID.version.getter();
    static MailMessageEntityID.Version.mailEntityVersion.getter();
    v24 = static String.== infix(_:_:)();

    if (v24)
    {
      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.mailMessageID.getter();
      dispatch thunk of CSQueryBuilder.addIDPredicate(_:)();

      v20 = dispatch thunk of CSQueryBuilder.build()();
      v19 = v8;
      *(v63 + 440) = v8;

      v9 = swift_task_alloc();
      *(v63 + 448) = v9;
      *v9 = *(v63 + 216);
      v9[1] = sub_1002D0CAC;

      return sub_1002B86FC(v20, v19, v60, v61);
    }

    else
    {
      MailMessageEntityID.version.getter();
      static MailMessageEntityID.Version.searchIndexerEntityVersion.getter();
      v18 = static String.== infix(_:_:)();

      if ((v18 & 1) == 0)
      {
        v64 = v25;
        v15 = v26;
        continue;
      }

      type metadata accessor for CSQueryBuilder();
      CSQueryBuilder.__allocating_init()();
      MailMessageEntityID.encodedID.getter();
      dispatch thunk of CSQueryBuilder.addAppEntityIDPredicate(_:)();

      v17 = dispatch thunk of CSQueryBuilder.build()();
      v16 = v10;
      *(v63 + 472) = v10;

      v11 = swift_task_alloc();
      *(v63 + 480) = v11;
      *v11 = *(v63 + 216);
      v11[1] = sub_1002D1D68;

      return sub_1002B890C(v17, v16, v60, v61);
    }
  }
}

uint64_t sub_1002D2E2C()
{
  v4 = v0[45];
  v3 = v0[44];
  v5 = v0[43];
  v0[27] = v0;

  (*(v3 + 8))(v4, v5);

  sub_100264880();

  v1 = *(v0[27] + 8);

  return v1();
}

uint64_t sub_1002D2F94()
{
  v4 = v0[45];
  v3 = v0[44];
  v5 = v0[43];
  v0[27] = v0;

  (*(v3 + 8))(v4, v5);

  sub_100264880();

  v1 = *(v0[27] + 8);

  return v1();
}

void sub_1002D3100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v18 = a1;
  v19 = a2;
  v17 = a3 + 16;
  v6 = *sub_1002CFAB8();
  _objc_retain(v6);

  v5 = String._bridgeToObjectiveC()();

  v11 = [v6 autosavedMessageDataWithIdentifier:v5];
  _objc_release(v5);
  _objc_release(v6);
  v16 = v11;
  v10 = [v11 result];
  v15 = v10;
  sub_1002D4EC8();
  v3 = Data.init(referencing:)();
  v9 = sub_1002D32F4(v3, v4);
  v14 = v9;
  _objc_retain(v9);

  sub_1002CD9C4(v9, a1, a2, v20);
  sub_1002CD078(v20, v13);
  memcpy(__dst, v20, sizeof(__dst));
  swift_beginAccess();
  sub_10025C9B0(&qword_1006D74E0);
  Array.append(_:)();
  swift_endAccess();
  sub_10028D6D0();
  _objc_release(v9);
  _objc_release(v10);
  _objc_release(v11);
}

id sub_1002D32F4(uint64_t a1, unint64_t a2)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [swift_getObjCClassFromMetadata() messageWithRFC822Data:isa];
  _objc_release(isa);
  sub_100288010(a1, a2);
  return v6;
}

uint64_t sub_1002D3370(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_100260618;

  return sub_1002CFB50(a1);
}

uint64_t sub_1002D3424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1002609F0;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1002D34E8(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  v4 = sub_1002D4054();
  *v3 = *(v6 + 16);
  v3[1] = sub_1002609F0;

  return EntityQuery.results()(a1, a2, v4);
}

uint64_t sub_1002D35B0()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.EntitySchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006EFF08;
  sub_10002094C(v7, qword_1006EFF08);
  v11 = sub_1000208F4(v7, v6);
  sub_100261018();
  sub_1002D36F0();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1002D36F0()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailDraftEntity", 0xFuLL, 1);
  return AssistantSchema.EntitySchema.init(_:)();
}

uint64_t sub_1002D37C8()
{
  if (qword_1006D5E60 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006EFF08);
}

uint64_t sub_1002D3834@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002D37C8();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1002D38B0@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = InstantAnswerView.Model.Flight.travelDate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002D39F0()
{
  v2 = qword_1006D7F68;
  if (!qword_1006D7F68)
  {
    sub_10025CAA4(&qword_1006D7F70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7F68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D3A78()
{
  v2 = qword_1006D7F78;
  if (!qword_1006D7F78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7F78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D3AF0()
{
  v2 = qword_1006D7F80;
  if (!qword_1006D7F80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7F80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002D3B68(uint64_t a1, void *a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_1002CBD78(a1, a2, v2 + 16);
}

uint64_t sub_1002D3C28(uint64_t a1, void *a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_1002CBAE0(a1, a2, v8, v9);
}

uint64_t sub_1002D3CFC(uint64_t a1, void *a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_1002CB934(a1, a2, v2 + 16);
}

unint64_t sub_1002D3DF0()
{
  v2 = qword_1006DCBA0;
  if (!qword_1006DCBA0)
  {
    sub_10025CAA4(&unk_1006D7160);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D3E78()
{
  v2 = qword_1006D7F88;
  if (!qword_1006D7F88)
  {
    sub_10025CAA4(&unk_1006D80D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7F88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D3F00()
{
  v2 = qword_1006DB3B0;
  if (!qword_1006DB3B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D3F7C()
{
  v2 = qword_1006D7F90;
  if (!qword_1006D7F90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7F90);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002D3FF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1002D4054()
{
  v2 = qword_1006D7FA0;
  if (!qword_1006D7FA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D40D0()
{
  v2 = qword_1006D7FA8;
  if (!qword_1006D7FA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D414C()
{
  v2 = qword_1006D7FB0;
  if (!qword_1006D7FB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D41E0()
{
  v2 = qword_1006DCBD0;
  if (!qword_1006DCBD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D4274()
{
  v2 = qword_1006D7FB8;
  if (!qword_1006D7FB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D4308()
{
  v2 = qword_1006D7FC0;
  if (!qword_1006D7FC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D439C()
{
  v2 = qword_1006D7FC8;
  if (!qword_1006D7FC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D442C()
{
  v2 = qword_1006DB3D0;
  if (!qword_1006DB3D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DB3D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D44C0()
{
  v2 = qword_1006D7FD0;
  if (!qword_1006D7FD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D4554()
{
  v2 = qword_1006D7FD8;
  if (!qword_1006D7FD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D45E8()
{
  v2 = qword_1006D7FE0;
  if (!qword_1006D7FE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D4694()
{
  v2 = qword_1006D7FE8;
  if (!qword_1006D7FE8)
  {
    sub_10025CAA4(&qword_1006D74E0);
    sub_10028D658();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D4744()
{
  v2 = qword_1006D7FF0;
  if (!qword_1006D7FF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D47D8()
{
  v2 = qword_1006D7FF8;
  if (!qword_1006D7FF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7FF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D486C()
{
  v2 = qword_1006D8000;
  if (!qword_1006D8000)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D4918()
{
  v2 = qword_1006D8008;
  if (!qword_1006D8008)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D49AC()
{
  v2 = qword_1006D8010;
  if (!qword_1006D8010)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D4A58()
{
  v2 = qword_1006D8018;
  if (!qword_1006D8018)
  {
    sub_10025CAA4(&qword_1006D8020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002D4AF8()
{
  v2 = qword_1006D8028;
  if (!qword_1006D8028)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8028);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002D4BA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002D4CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1002D4EC8()
{
  v2 = qword_1006D8030;
  if (!qword_1006D8030)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D8030);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002D4F2C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Not yet implemented.", 0x14uLL, 1)._countAndFlagsBits;
  }

  DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Received unexpected argument: ", 0x1EuLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  sub_100268744();
  v5 = String.init(stringInterpolation:)();

  return v5;
}

uint64_t sub_1002D5148(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 16))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < &_mh_execute_header)
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002D5298(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1002D5558(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 0x3FF0000000000000;
    case 2:
      return 0;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

void sub_1002D5628(double a1)
{
  v54 = sub_1002D6CCC(v1);
  v50 = sub_1002D6F50(a1, v54, 53.0);
  v51 = &v49[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewTopConstraint];
  swift_beginAccess();
  v52 = *v51;
  _objc_retain(*v51);
  swift_endAccess();
  if (v52)
  {
    v47 = v52;
  }

  else
  {
    LOBYTE(v4) = 2;
    v9 = 107;
    LODWORD(v14) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v47 setConstant:{v50, v4, v9, v14}];
  _objc_release(v47);
  v44 = sub_1002D6F50(a1, 20.0, 78.0);
  v45 = &v49[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewHeightConstraint];
  swift_beginAccess();
  v46 = *v45;
  _objc_retain(*v45);
  swift_endAccess();
  if (v46)
  {
    v43 = v46;
  }

  else
  {
    LOBYTE(v5) = 2;
    v10 = 110;
    LODWORD(v15) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v43 setConstant:{v44, v5, v10, v15}];
  _objc_release(v43);
  v38 = objc_opt_self();
  _objc_retain(v49);
  v39 = *&v49[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v39);
  _objc_release(v49);
  [v38 roundAvatarView:v39 withBorder:0 size:v44];
  _objc_release(v39);
  v40 = sub_1002D6F50(a1, 2.0, 8.0);
  v41 = &v49[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_titleTopConstraint];
  swift_beginAccess();
  v42 = *v41;
  _objc_retain(*v41);
  swift_endAccess();
  if (v42)
  {
    v37 = v42;
  }

  else
  {
    LOBYTE(v6) = 2;
    v11 = 115;
    LODWORD(v16) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v37 setConstant:{v40, v6, v11, v16}];
  _objc_release(v37);
  v53 = sub_1002D6F50(a1, 12.0, 34.0);
  _objc_retain(v49);
  v29 = *&v49[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v29);
  _objc_release(v49);
  v28 = [objc_opt_self() systemFontOfSize:v53 weight:UIFontWeightBold];
  [v29 setFont:?];
  _objc_release(v28);
  _objc_release(v29);
  v33 = sub_1002D6F94();
  v30 = v2;
  _objc_retain(v49);
  v31 = *&v49[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v31);
  _objc_release(v49);
  [v31 intrinsicContentSize];
  v32 = v3;
  _objc_release(v31);
  v34 = sub_1002D6F50(a1, -v32, v33);
  v35 = &v49[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleTopConstraint];
  swift_beginAccess();
  v36 = *v35;
  _objc_retain(*v35);
  swift_endAccess();
  if (v36)
  {
    v27 = v36;
  }

  else
  {
    LOBYTE(v7) = 2;
    v12 = 123;
    LODWORD(v17) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v27 setConstant:{v34, v7, v12, v17}];
  _objc_release(v27);
  v24 = sub_1002D6F50(a1, 8.0, v30);
  v25 = &v49[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleBottomConstraint];
  swift_beginAccess();
  v26 = *v25;
  _objc_retain(*v25);
  swift_endAccess();
  if (v26)
  {
    v23 = v26;
  }

  else
  {
    LOBYTE(v8) = 2;
    v13 = 126;
    LODWORD(v18) = 0;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v23 setConstant:{v24, v8, v13, v18}];
  _objc_release(v23);
  v21 = &v49[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleButtonHeightConstraint];
  swift_beginAccess();
  v22 = *v21;
  _objc_retain(*v21);
  swift_endAccess();
  if (v22)
  {
    v20 = v22;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v20 setConstant:sub_1002D7060(a1)];
  _objc_release(v20);
  _objc_retain(v49);
  v19 = *&v49[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v19);
  _objc_release(v49);
  [v19 setAlpha:1.0 - (1.0 - a1) / 0.25];
  _objc_release(v19);
}

void sub_1002D5ED0()
{
  _objc_retain(v0);
  sub_1002ABE34();
  _objc_release(v3);
  v4 = &v3[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_backgroundViewHeightConstraint];
  swift_beginAccess();
  v5 = *v4;
  _objc_retain(*v4);
  swift_endAccess();
  if (v5)
  {
    v2 = v5;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  _objc_retain(v3);
  v1 = sub_1002A8200();
  _objc_release(v3);
  [v2 setConstant:v1 * 1.5];
  _objc_release(v2);
}

uint64_t sub_1002D6058(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 0;
}

uint64_t sub_1002D6220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1002D6058(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

id sub_1002D637C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewTopConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002D63EC(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewTopConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002D6484()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewHeightConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002D64F4(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewHeightConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002D658C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_titleTopConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002D65FC(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_titleTopConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002D6694()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleTopConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002D6704(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleTopConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002D679C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleBottomConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002D680C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleBottomConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002D68A4()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleButtonHeightConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002D6914(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleButtonHeightConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002D69AC()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_backgroundViewHeightConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002D6A1C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_backgroundViewHeightConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002D6AB4()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_contentViewBottomConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002D6B24(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_contentViewBottomConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void sub_1002D6BBC(char *a1, uint64_t a2)
{
  sub_1002AA978(a1);
  v4 = sub_1002D5558(a2);
  if ((v2 & 1) == 0)
  {
    sub_1002D5628(*&v4);
  }
}

double sub_1002D6CCC(void *a1)
{
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    return 2.0;
  }

  _objc_retain(a1);
  v7 = [a1 window];
  _objc_release(a1);
  if (v7)
  {
    v5 = [v7 traitCollection];
    _objc_release(v7);
    [v5 verticalSizeClass];
    _objc_release(v5);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v4 = 0;
  }

  else
  {
    type metadata accessor for UIUserInterfaceSizeClass();
    sub_1002DA228();
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  if ((v4 & 1) == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v4 & 1;
  }

  if (v3)
  {
    return 20.0;
  }

  else
  {
    return 10.0;
  }
}

double sub_1002D6F94()
{
  _objc_retain(v0);
  v4 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v4);
  _objc_release(v3);
  [v4 intrinsicContentSize];
  v5 = v1;
  _objc_release(v4);
  return 4.0 - (40.0 - v5) / 2.0;
}

double sub_1002D7060(double a1)
{
  _objc_retain(v1);
  v5 = *&v1[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v5);
  _objc_release(v1);
  [v5 intrinsicContentSize];
  v10 = v2;
  _objc_release(v5);
  _objc_retain(v1);
  v7 = *&v1[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v7);
  _objc_release(v6);
  [v7 intrinsicContentSize];
  v8 = v3;
  _objc_release(v7);
  return v10 + (40.0 - v8) * a1;
}

double sub_1002D7274(double a1)
{
  sub_1002D5628(a1);
  [v3 layoutIfNeeded];
  _objc_retain(v3);
  v4 = *&v3[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v4);
  _objc_release(v3);
  [v4 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v5 = v1;
  _objc_release(v4);
  return v5;
}

void sub_1002D743C()
{
  _objc_retain(v0);
  sub_1002AB258();
  _objc_release(v6);
  _objc_retain(v6);
  v1 = *&v6[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v1);
  _objc_release(v6);
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v1);
  _objc_retain(v6);
  v2 = *&v6[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v2);
  _objc_release(v6);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v2);
  _objc_retain(v6);
  v3 = *&v6[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v3);
  _objc_release(v6);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v3);
  _objc_retain(v6);
  v4 = *&v6[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v4);
  _objc_release(v6);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v4);
  _objc_retain(v6);
  v5 = *&v6[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v5);
  _objc_release(v6);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v5);
  _objc_retain(v6);
  v7 = *&v6[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v7);
  _objc_release(v6);
  [v7 setNumberOfLines:1];
  _objc_release(v7);
}

uint64_t *sub_1002D7760()
{
  v156 = 0;
  v157 = v0;
  _objc_retain(v0);
  v88 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v88);
  _objc_release(v0);
  [v0 addSubview:v88];
  _objc_release(v88);
  _objc_retain(v0);
  v90 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v90);
  _objc_release(v0);
  _objc_retain(v0);
  v89 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v89);
  _objc_release(v0);
  [v90 addSubview:v89];
  _objc_release(v89);
  _objc_release(v90);
  _objc_retain(v0);
  v92 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v92);
  _objc_release(v0);
  _objc_retain(v0);
  v91 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v91);
  _objc_release(v0);
  [v92 addSubview:v91];
  _objc_release(v91);
  _objc_release(v92);
  _objc_retain(v0);
  v94 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v94);
  _objc_release(v0);
  _objc_retain(v0);
  v93 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v93);
  _objc_release(v0);
  [v94 addSubview:v93];
  _objc_release(v93);
  _objc_release(v94);
  _objc_retain(v0);
  v95 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v95);
  _objc_release(v0);
  [v0 addSubview:v95];
  _objc_release(v95);
  sub_100293824();
  v156 = Array.init()();
  _objc_retain(v0);
  v96 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v96);
  _objc_release(v0);
  v99 = [v96 topAnchor];
  _objc_release(v96);
  _objc_retain(v0);
  v97 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v97);
  _objc_release(v0);
  v98 = [v97 topAnchor];
  _objc_release(v97);
  v101 = [v99 constraintEqualToAnchor:v98 constant:53.0];
  _objc_release(v98);
  _objc_release(v99);
  v100 = &v0[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewTopConstraint];
  swift_beginAccess();
  v1 = *v100;
  *v100 = v101;
  _objc_release(v1);
  swift_endAccess();
  _objc_retain(v0);
  v102 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v102);
  _objc_release(v0);
  v103 = [v102 heightAnchor];
  _objc_release(v102);
  v105 = [v103 constraintEqualToConstant:78.0];
  _objc_release(v103);
  v104 = &v0[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewHeightConstraint];
  swift_beginAccess();
  v2 = *v104;
  *v104 = v105;
  _objc_release(v2);
  swift_endAccess();
  _objc_retain(v0);
  v106 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v106);
  _objc_release(v0);
  v109 = [v106 topAnchor];
  _objc_release(v106);
  _objc_retain(v0);
  v107 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v107);
  _objc_release(v0);
  v108 = [v107 bottomAnchor];
  _objc_release(v107);
  v111 = [v109 constraintEqualToAnchor:v108 constant:8.0];
  _objc_release(v108);
  _objc_release(v109);
  v110 = &v0[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_titleTopConstraint];
  swift_beginAccess();
  v3 = *v110;
  *v110 = v111;
  _objc_release(v3);
  swift_endAccess();
  v114 = sub_1002D6F94();
  v121 = v4;
  _objc_retain(v131);
  v112 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v112);
  _objc_release(v131);
  v116 = [v112 topAnchor];
  _objc_release(v112);
  _objc_retain(v131);
  v113 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v113);
  _objc_release(v131);
  v115 = [v113 bottomAnchor];
  _objc_release(v113);
  v118 = [v116 constraintEqualToAnchor:v115 constant:v114];
  _objc_release(v115);
  _objc_release(v116);
  v117 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleTopConstraint];
  swift_beginAccess();
  v5 = *v117;
  *v117 = v118;
  _objc_release(v5);
  swift_endAccess();
  _objc_retain(v131);
  v119 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v119);
  _objc_release(v131);
  v123 = [v119 bottomAnchor];
  _objc_release(v119);
  _objc_retain(v131);
  v120 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v120);
  _objc_release(v131);
  v122 = [v120 bottomAnchor];
  _objc_release(v120);
  v125 = [v123 constraintEqualToAnchor:v122 constant:v121];
  _objc_release(v122);
  _objc_release(v123);
  v124 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleBottomConstraint];
  swift_beginAccess();
  v6 = *v124;
  *v124 = v125;
  _objc_release(v6);
  swift_endAccess();
  _objc_retain(v131);
  v126 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v126);
  _objc_release(v131);
  v127 = [v126 heightAnchor];
  _objc_release(v126);
  v7 = sub_1002D9B08();
  v129 = [v127 constraintGreaterThanOrEqualToConstant:sub_1002D7060(v7)];
  _objc_release(v127);
  v128 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleButtonHeightConstraint];
  swift_beginAccess();
  v8 = *v128;
  *v128 = v129;
  _objc_release(v8);
  swift_endAccess();
  _objc_retain(v131);
  v130 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v130);
  _objc_release(v131);
  v133 = [v130 heightAnchor];
  _objc_release(v130);
  _objc_retain(v131);
  v132 = sub_1002A8200();
  _objc_release(v131);
  v135 = [v133 constraintEqualToConstant:v132];
  _objc_release(v133);
  v134 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_backgroundViewHeightConstraint];
  swift_beginAccess();
  v9 = *v134;
  *v134 = v135;
  _objc_release(v9);
  swift_endAccess();
  _objc_retain(v131);
  v136 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v136);
  _objc_release(v131);
  v138 = [v136 bottomAnchor];
  _objc_release(v136);
  _objc_retain(v131);
  v137 = [v131 bottomAnchor];
  _objc_release(v131);
  v140 = [v138 constraintEqualToAnchor:v137];
  _objc_release(v137);
  _objc_release(v138);
  v139 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_contentViewBottomConstraint];
  swift_beginAccess();
  v10 = *v139;
  *v139 = v140;
  _objc_release(v10);
  swift_endAccess();
  _allocateUninitializedArray<A>(_:)();
  v153 = v11;
  _objc_retain(v131);
  v141 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v141);
  _objc_release(v131);
  v143 = [v141 leadingAnchor];
  _objc_release(v141);
  _objc_retain(v131);
  v142 = [v131 leadingAnchor];
  _objc_release(v131);
  v144 = [v143 constraintEqualToAnchor:v142];
  _objc_release(v142);
  _objc_release(v143);
  *v153 = v144;
  _objc_retain(v131);
  v145 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v145);
  _objc_release(v131);
  v147 = [v145 bottomAnchor];
  _objc_release(v145);
  _objc_retain(v131);
  v146 = [v131 bottomAnchor];
  _objc_release(v131);
  v148 = [v147 constraintEqualToAnchor:v146];
  _objc_release(v146);
  _objc_release(v147);
  v153[1] = v148;
  _objc_retain(v131);
  v149 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v149);
  _objc_release(v131);
  v151 = [v149 trailingAnchor];
  _objc_release(v149);
  _objc_retain(v131);
  v150 = [v131 trailingAnchor];
  _objc_release(v131);
  v152 = [v151 constraintEqualToAnchor:v150];
  _objc_release(v150);
  _objc_release(v151);
  v153[2] = v152;
  v154 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_backgroundViewHeightConstraint];
  swift_beginAccess();
  v155 = *v154;
  _objc_retain(*v154);
  swift_endAccess();
  if (v155)
  {
    v87 = v155;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v153[3] = v87;
  _objc_retain(v131);
  v77 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v77);
  _objc_release(v131);
  v79 = [v77 topAnchor];
  _objc_release(v77);
  _objc_retain(v131);
  v78 = [v131 topAnchor];
  _objc_release(v131);
  v80 = [v79 constraintEqualToAnchor:v78];
  _objc_release(v78);
  _objc_release(v79);
  v153[4] = v80;
  _objc_retain(v131);
  v81 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v81);
  _objc_release(v131);
  v83 = [v81 leadingAnchor];
  _objc_release(v81);
  _objc_retain(v131);
  v82 = [v131 leadingAnchor];
  _objc_release(v131);
  v84 = [v83 constraintEqualToAnchor:v82];
  _objc_release(v82);
  _objc_release(v83);
  v153[5] = v84;
  v85 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_contentViewBottomConstraint];
  swift_beginAccess();
  v86 = *v85;
  _objc_retain(*v85);
  swift_endAccess();
  if (v86)
  {
    v76 = v86;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v153[6] = v76;
  _objc_retain(v131);
  v70 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v70);
  _objc_release(v131);
  v72 = [v70 trailingAnchor];
  _objc_release(v70);
  _objc_retain(v131);
  v71 = [v131 trailingAnchor];
  _objc_release(v131);
  v73 = [v72 constraintEqualToAnchor:v71];
  _objc_release(v71);
  _objc_release(v72);
  v153[7] = v73;
  v74 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewTopConstraint];
  swift_beginAccess();
  v75 = *v74;
  _objc_retain(*v74);
  swift_endAccess();
  if (v75)
  {
    v69 = v75;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v153[8] = v69;
  _objc_retain(v131);
  v62 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v62);
  _objc_release(v131);
  v65 = [v62 centerXAnchor];
  _objc_release(v62);
  _objc_retain(v131);
  v63 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v63);
  _objc_release(v131);
  v64 = [v63 centerXAnchor];
  _objc_release(v63);
  v66 = [v65 constraintEqualToAnchor:v64];
  _objc_release(v64);
  _objc_release(v65);
  v153[9] = v66;
  v67 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewHeightConstraint];
  swift_beginAccess();
  v68 = *v67;
  _objc_retain(*v67);
  swift_endAccess();
  if (v68)
  {
    v61 = v68;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v153[10] = v61;
  _objc_retain(v131);
  v54 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v54);
  _objc_release(v131);
  v57 = [v54 widthAnchor];
  _objc_release(v54);
  _objc_retain(v131);
  v55 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v55);
  _objc_release(v131);
  v56 = [v55 heightAnchor];
  _objc_release(v55);
  v58 = [v57 constraintEqualToAnchor:v56];
  _objc_release(v56);
  _objc_release(v57);
  v153[11] = v58;
  v59 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_titleTopConstraint];
  swift_beginAccess();
  v60 = *v59;
  _objc_retain(*v59);
  swift_endAccess();
  if (v60)
  {
    v53 = v60;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v153[12] = v53;
  _objc_retain(v131);
  v34 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v34);
  _objc_release(v131);
  v38 = [v34 leadingAnchor];
  _objc_release(v34);
  _objc_retain(v131);
  v35 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v35);
  _objc_release(v131);
  v36 = [v35 layoutMarginsGuide];
  _objc_release(v35);
  v37 = [v36 leadingAnchor];
  _objc_release(v36);
  v39 = [v38 constraintGreaterThanOrEqualToAnchor:v37];
  _objc_release(v37);
  _objc_release(v38);
  v153[13] = v39;
  _objc_retain(v131);
  v40 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v40);
  _objc_release(v131);
  v44 = [v40 trailingAnchor];
  _objc_release(v40);
  _objc_retain(v131);
  v41 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v41);
  _objc_release(v131);
  v42 = [v41 layoutMarginsGuide];
  _objc_release(v41);
  v43 = [v42 trailingAnchor];
  _objc_release(v42);
  v45 = [v44 constraintLessThanOrEqualToAnchor:v43];
  _objc_release(v43);
  _objc_release(v44);
  v153[14] = v45;
  _objc_retain(v131);
  v46 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v46);
  _objc_release(v131);
  v49 = [v46 centerXAnchor];
  _objc_release(v46);
  _objc_retain(v131);
  v47 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v47);
  _objc_release(v131);
  v48 = [v47 centerXAnchor];
  _objc_release(v47);
  v50 = [v49 constraintEqualToAnchor:v48];
  _objc_release(v48);
  _objc_release(v49);
  v153[15] = v50;
  v51 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleTopConstraint];
  swift_beginAccess();
  v52 = *v51;
  _objc_retain(*v51);
  swift_endAccess();
  if (v52)
  {
    v33 = v52;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v153[16] = v33;
  _objc_retain(v131);
  v25 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v25);
  _objc_release(v131);
  v29 = [v25 leadingAnchor];
  _objc_release(v25);
  _objc_retain(v131);
  v26 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v26);
  _objc_release(v131);
  v27 = [v26 layoutMarginsGuide];
  _objc_release(v26);
  v28 = [v27 leadingAnchor];
  _objc_release(v27);
  v30 = [v29 constraintEqualToAnchor:v28];
  _objc_release(v28);
  _objc_release(v29);
  v153[17] = v30;
  v31 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleBottomConstraint];
  swift_beginAccess();
  v32 = *v31;
  _objc_retain(*v31);
  swift_endAccess();
  if (v32)
  {
    v24 = v32;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v153[18] = v24;
  _objc_retain(v131);
  v16 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v16);
  _objc_release(v131);
  v20 = [v16 trailingAnchor];
  _objc_release(v16);
  _objc_retain(v131);
  v17 = *&v131[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v17);
  _objc_release(v131);
  v18 = [v17 layoutMarginsGuide];
  _objc_release(v17);
  v19 = [v18 trailingAnchor];
  _objc_release(v18);
  v21 = [v20 constraintEqualToAnchor:v19];
  _objc_release(v19);
  _objc_release(v20);
  v153[19] = v21;
  v22 = &v131[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleButtonHeightConstraint];
  swift_beginAccess();
  v23 = *v22;
  _objc_retain(*v22);
  swift_endAccess();
  if (v23)
  {
    v15 = v23;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v153[20] = v15;
  sub_1002612B0();
  sub_10025C9B0(&qword_1006D8080);
  sub_1002D9B10();
  Array.append<A>(contentsOf:)();
  v13 = objc_opt_self();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];
  _objc_release(isa);
  result = &v156;
  sub_100264880();
  return result;
}

unint64_t sub_1002D9B10()
{
  v2 = qword_1006D8088;
  if (!qword_1006D8088)
  {
    sub_10025CAA4(&qword_1006D8080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8088);
    return WitnessTable;
  }

  return v2;
}

char *sub_1002D9BE8(double a1, double a2, double a3, double a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8 = a3;
  *(&v8 + 1) = a4;
  ObjectType = swift_getObjectType();
  v11 = v7;
  v12 = v8;
  v13 = v4;
  *&v4[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewTopConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewHeightConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_titleTopConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleTopConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleBottomConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleButtonHeightConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_backgroundViewHeightConstraint] = 0;
  *&v13[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_contentViewBottomConstraint] = 0;
  v10.receiver = v13;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, "initWithFrame:", v7, v8);
  _objc_retain(v9);
  v13 = v9;
  _objc_release(v9);
  return v9;
}

char *sub_1002D9D8C(void *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  *&v1[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewTopConstraint] = 0;
  *&v9[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewHeightConstraint] = 0;
  *&v9[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_titleTopConstraint] = 0;
  *&v9[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleTopConstraint] = 0;
  *&v9[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleBottomConstraint] = 0;
  *&v9[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleButtonHeightConstraint] = 0;
  *&v9[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_backgroundViewHeightConstraint] = 0;
  *&v9[OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_contentViewBottomConstraint] = 0;
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, "initWithCoder:");
  if (v6)
  {
    _objc_retain(v6);
    v9 = v6;
    _objc_release(a1);
    _objc_release(v9);
    return v6;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

uint64_t sub_1002D9F38()
{
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewTopConstraint));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_avatarViewHeightConstraint));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_titleTopConstraint));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleTopConstraint));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleBottomConstraint));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_subtitleButtonHeightConstraint));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_backgroundViewHeightConstraint));
  result = v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_contentViewBottomConstraint;
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail38ExpandableConversationSenderHeaderView_contentViewBottomConstraint));
  return result;
}

uint64_t type metadata accessor for ExpandableConversationSenderHeaderView()
{
  v1 = qword_1006D80B8;
  if (!qword_1006D80B8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1002DA144()
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

unint64_t sub_1002DA228()
{
  v2 = qword_1006D80C8;
  if (!qword_1006D80C8)
  {
    type metadata accessor for UIUserInterfaceSizeClass();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D80C8);
    return WitnessTable;
  }

  return v2;
}

void sub_1002DA2A8(void *a1@<X8>)
{
  v25 = 0;
  v26 = 0;
  memset(__b, 0, sizeof(__b));
  v27 = v18;
  v19 = [v18 itemURLString];
  if (v19)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v1;
    _objc_release(v19);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (v16)
  {
    v25 = v15;
    v26 = v16;

    _objc_retain(v18);
    sub_10035A430();
    v22 = &unk_10065B148;
    v23 = &off_10065B168;
    sub_10035F06C(v15, v16, v18, v21, __b);
    v11 = [v18 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10035F1A8();
    _objc_release(v11);
    v12 = [v18 account];
    if (v12)
    {
      _objc_retain(v12);
      v2 = [v12 identifier];
      v10 = v2;
      if (v2)
      {
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v3;
        _objc_release(v10);
        v8 = v6;
        v9 = v7;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      if (v9)
      {
        _objc_release(v12);
        _allocateUninitializedArray<A>(_:)();
        v5 = v4;

        *v5 = v8;
        v5[1] = v9;
        sub_1002612B0();
        sub_10025E60C();

        sub_10025C9B0(&unk_1006D80D0);
        sub_1002D3E78();
        Collection.first.getter();

        if (v20)
        {
          sub_10035F230(v20);
        }

        _objc_release(v12);
      }

      else
      {
        _objc_release(v12);
        _objc_release(v12);
      }
    }

    sub_10027EB5C(__b, a1);
    sub_10027D728(__b);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    a1[6] = 0;
    a1[7] = 0;
    a1[8] = 0;
    a1[9] = 0;
  }
}

uint64_t sub_1002DA748()
{
  memset(__b, 0, sizeof(__b));
  v7 = v0;
  sub_1002DA2A8(__src);
  if (__src[1])
  {
    memcpy(__b, __src, sizeof(__b));
    type metadata accessor for UIAppEntityInteraction();
    sub_1002DA854();
    v4 = swift_allocObject();
    sub_10027EB5C(__b, (v4 + 16));
    v2 = UIAppEntityInteraction.__allocating_init(entity:)();
    sub_10027D728(__b);
    return v2;
  }

  else
  {
    sub_10027D594(__src);
    return 0;
  }
}

unint64_t sub_1002DA854()
{
  v2 = qword_1006D80E0;
  if (!qword_1006D80E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D80E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002DA8CC@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v9 = v1;
  sub_1002DA2A8(__src);
  if (__src[1])
  {
    memcpy(__b, __src, sizeof(__b));
    sub_10027EB5C(__b, v6);
    sub_1002DA854();
    EntityIdentifier.init<A>(for:)();
    v2 = type metadata accessor for EntityIdentifier();
    (*(*(v2 - 8) + 56))(a1, 0, 1);
    return sub_10027D728(__b);
  }

  else
  {
    sub_10027D594(__src);
    v4 = type metadata accessor for EntityIdentifier();
    return (*(*(v4 - 8) + 56))(a1, 1);
  }
}

uint64_t sub_1002DAA04()
{
  v5 = sub_1002DA748();
  sub_10025C9B0(&qword_1006D80E8);
  if (!v5)
  {
    return _allocateUninitializedArray<A>(_:)();
  }

  v3 = _allocateUninitializedArray<A>(_:)();
  v2 = v0;
  _objc_retain(v5);
  *v2 = v5;
  sub_1002612B0();
  _objc_release(v5);
  return v3;
}

uint64_t sub_1002DAB04()
{

  v2 = String._bridgeToObjectiveC()();

  v3 = [v0 itemsContainingName:v2];
  _objc_release(v2);
  sub_1002DAC28();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v3);
  sub_1002DAC8C();
  v4 = sub_1002DAD5C();

  return v4;
}

unint64_t sub_1002DAC28()
{
  v2 = qword_1006D80F8;
  if (!qword_1006D80F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D80F8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002DAC8C()
{
  sub_1002DAC28();
  Array.init()();
  sub_10025C9B0(&qword_1006D8100);
  sub_1002DB7A0();
  Sequence.reduce<A>(into:_:)();
  return v1;
}

uint64_t sub_1002DAD5C()
{
  sub_10025C9B0(&qword_1006D8100);
  sub_1002DB7A0();
  return Sequence.compactMap<A>(_:)();
}

uint64_t sub_1002DAE0C()
{

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v0 itemsMatchingItemURLStrings:isa];
  _objc_release(isa);
  sub_1002DAC28();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v3);
  sub_1002DAC8C();
  v4 = sub_1002DAD5C();

  return v4;
}

uint64_t sub_1002DAF18()
{
  v44 = sub_1002DB828;
  v48 = sub_10026E818;
  v50 = sub_10026434C;
  v52 = sub_10026434C;
  v55 = sub_10026EBF8;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v35 = 0;
  v41 = type metadata accessor for Logger();
  v39 = *(v41 - 8);
  v40 = v41 - 8;
  v34 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v38 = &v17 - v34;
  v68 = v0;
  v36 = [v0 suggestedFavoriteItems];
  sub_1002DAC28();
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v37;
  _objc_release(v36);
  v1 = sub_1002DAC8C();
  v2 = v38;
  v42 = v1;
  v66 = v1;
  v3 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v39 + 16))(v2, v3, v41);

  v46 = 7;
  v47 = swift_allocObject();
  *(v47 + 16) = v42;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  v43 = 17;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 8;
  v45 = 32;
  v4 = swift_allocObject();
  v5 = v47;
  v49 = v4;
  *(v4 + 16) = v44;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v49;
  v56 = v6;
  *(v6 + 16) = v48;
  *(v6 + 24) = v7;
  v58 = sub_10025C9B0(&unk_1006D7720);
  v54 = _allocateUninitializedArray<A>(_:)();
  v57 = v8;

  v9 = v51;
  v10 = v57;
  *v57 = v50;
  v10[1] = v9;

  v11 = v53;
  v12 = v57;
  v57[2] = v52;
  v12[3] = v11;

  v13 = v56;
  v14 = v57;
  v57[4] = v55;
  v14[5] = v13;
  sub_1002612B0();

  if (os_log_type_enabled(v59, v60))
  {
    v26 = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = sub_10025C9B0(&qword_1006D7290);
    v25 = 0;
    v27 = sub_1002641E8(0);
    v28 = sub_1002641E8(v25);
    v29 = &v65;
    v65 = v26;
    v30 = &v64;
    v64 = v27;
    v31 = &v63;
    v63 = v28;
    sub_10026423C(0, &v65);
    sub_10026423C(1, v29);
    v15 = v33;
    v61 = v50;
    v62 = v51;
    sub_100264250(&v61, v29, v30, v31);
    v32 = v15;
    if (v15)
    {

      __break(1u);
    }

    else
    {
      v61 = v52;
      v62 = v53;
      sub_100264250(&v61, &v65, &v64, &v63);
      v22 = 0;
      v61 = v55;
      v62 = v56;
      sub_100264250(&v61, &v65, &v64, &v63);
      v21 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Returning %ld suggested mailboxes", v26, 0xCu);
      v20 = 0;
      sub_10026429C(v27);
      sub_10026429C(v28);
      UnsafeMutablePointer.deallocate()();

      v23 = v21;
    }
  }

  else
  {

    v23 = v33;
  }

  v19 = v23;
  _objc_release(v59);
  (*(v39 + 8))(v38, v41);
  v18 = sub_1002DAD5C();

  return v18;
}

void sub_1002DB654(uint64_t a1, id *a2)
{
  v2 = *a2;

  _objc_retain(v2);
  sub_10025C9B0(&qword_1006D8100);
  sub_1002DB7A0();
  v4 = Sequence.contains(where:)();
  if (v3)
  {
    _objc_release(v2);
    __break(1u);
  }

  else
  {
    _objc_release(v2);
    sub_100264880();
    if ((v4 & 1) == 0)
    {
      _objc_retain(v2);
      Array.append(_:)();
    }
  }
}

unint64_t sub_1002DB7A0()
{
  v2 = qword_1006D8108;
  if (!qword_1006D8108)
  {
    sub_10025CAA4(&qword_1006D8100);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8108);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002DB830(void **a1, id a2)
{
  v20 = 0;
  v19 = 0;
  v14 = *a1;
  v20 = *a1;
  v19 = a2;
  v15 = [a2 itemURLString];
  if (v15)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v2;
    _objc_release(v15);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v9 = [v14 itemURLString];
  if (v9)
  {
    *&v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v7 + 1) = v3;
    _objc_release(v9);
    v8 = v7;
  }

  else
  {
    v8 = 0uLL;
  }

  v17[0] = v12;
  v17[1] = v13;
  v18 = v8;
  if (!v13)
  {
    if (!*(&v18 + 1))
    {
      sub_100268744();
      v6 = 1;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  sub_100268860(v17, &v16);
  if (!*(&v18 + 1))
  {
    sub_100268744();
LABEL_14:
    sub_100268828();
    v6 = 0;
    goto LABEL_13;
  }

  v5 = static String.== infix(_:_:)();
  sub_100268744();
  sub_100268744();
  sub_100268744();
  v6 = v5;
LABEL_13:

  return v6 & 1;
}

uint64_t sub_1002DBAAC()
{
  v3 = sub_1002DAB04();
  if (v0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002DBB44()
{
  v3 = sub_1002DAF18();
  if (v0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002DBC04()
{
  v22 = 0;
  v8 = sub_1002DC20C;
  v13 = sub_1002DC20C;
  v21 = sub_1002DC20C;
  v40 = &v50;
  v50 = 0;
  v39 = &v48;
  v48 = 0;
  v38 = &v46;
  v46 = 0;
  v37 = &v44;
  v44 = 0;
  v36 = &v43;
  v43 = 0;
  v35 = &v42;
  v42 = 0;
  v16 = sub_10025C9B0(&qword_1006D8110);
  v4 = *(v16 - 8);
  v5 = v16 - 8;
  v2 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v20 = &v1 - v2;
  v26 = type metadata accessor for Tips.Rule();
  v9 = *(v26 - 8);
  v10 = v26 - 8;
  v3 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v29 = &v1 - v3;
  v6 = sub_1002DC194();
  v7 = &v49;
  v14 = 32;
  swift_beginAccess();
  v18 = *(v4 + 16);
  v17 = v4 + 16;
  v18(v20, v6, v16);
  swift_endAccess();
  v23 = &type metadata for Bool;
  v24 = &protocol witness table for Bool;
  v25 = &protocol witness table for Bool;
  Tips.Rule.init<A>(_:_:)();
  v30 = static Tips.RuleBuilder.buildExpression(_:)();
  v28 = *(v9 + 8);
  v27 = v9 + 8;
  v28(v29, v26);

  v50 = v30;
  v11 = sub_1002DC410();
  v12 = &v47;
  swift_beginAccess();
  v18(v20, v11, v16);
  swift_endAccess();
  Tips.Rule.init<A>(_:_:)();
  v31 = static Tips.RuleBuilder.buildExpression(_:)();
  v28(v29, v26);

  v48 = v31;
  v15 = sub_1000206C4();
  v19 = &v45;
  swift_beginAccess();
  v18(v20, v15, v16);
  swift_endAccess();
  Tips.Rule.init<A>(_:_:)();
  v33 = static Tips.RuleBuilder.buildExpression(_:)();
  v28(v29, v26);

  v46 = v33;
  v32 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  v44 = v32;
  v34 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v43 = v34;
  v41 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v42 = v41;
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  sub_100264880();
  return v41;
}

uint64_t sub_1002DC194()
{
  if (qword_1006D5E70 != -1)
  {
    swift_once();
  }

  v0 = sub_10025C9B0(&qword_1006D8110);
  return sub_1000208F4(v0, qword_1006EFF38);
}

uint64_t sub_1002DC20C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v9 = a1;
  v22 = 0;
  v16 = sub_10025C9B0(&qword_1006D8130);
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v15 = &v7 - v7;
  v20 = sub_10025C9B0(&qword_1006D8138);
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v19 = &v7 - v8;
  v22 = v2;
  v12 = sub_1002DD484();
  static PredicateExpressions.build_Arg<A>(_:)();
  v21 = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  v3 = sub_10025C9B0(&qword_1006D8148);
  v10[3] = v3;
  v4 = sub_1002DD50C();
  v5 = v10;
  v10[4] = v4;
  v11 = sub_10026AC9C(v5);
  sub_1002DD6DC();
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v13 + 8))(v15, v16);
  return (*(v17 + 8))(v19, v20);
}

uint64_t sub_1002DC410()
{
  if (qword_1006D5E78 != -1)
  {
    swift_once();
  }

  v0 = sub_10025C9B0(&qword_1006D8110);
  return sub_1000208F4(v0, qword_1006EFF50);
}

uint64_t sub_1002DC488()
{
  v13 = &opaque type descriptor for <<opaque return type of static Tips.OptionsBuilder.buildExpression<A>(_:)>>;
  v18 = &opaque type descriptor for <<opaque return type of static Tips.OptionsBuilder.buildPartialBlock<A>(first:)>>;
  v37 = 0;
  v36 = 0;
  v24 = sub_10025C9B0(&qword_1006D8118);
  v20 = *(v24 - 8);
  v21 = v24 - 8;
  v2 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v24);
  v22 = &v2 - v2;
  v3 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v2 - v2);
  v23 = &v2 - v3;
  v37 = &v2 - v3;
  v11 = type metadata accessor for Tips.UsesConstellation();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v4;
  v28 = sub_10025C9B0(&qword_1006D8120);
  v14 = *(v28 - 8);
  v15 = v28 - 8;
  v6 = *(v14 + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v16 = &v2 - v5;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v2 - v5);
  v27 = &v2 - v7;
  v36 = &v2 - v7;
  Tips.UsesConstellation.init(_:)();
  v12 = &protocol witness table for Tips.UsesConstellation;
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v8 + 8))(v10, v11);
  (*(v14 + 16))(v16, v27, v28);
  v34 = v11;
  v35 = v12;
  v19 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v30 = *(v14 + 8);
  v29 = v14 + 8;
  v30(v16, v28);
  (*(v20 + 16))(v22, v23, v24);
  v32 = v28;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  v26 = *(v20 + 8);
  v25 = v20 + 8;
  v26(v22, v24);
  v26(v23, v24);
  v30(v27, v28);
  return v31;
}

uint64_t sub_1002DC99C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002DBBD4();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1002DC9CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000206C4();
  swift_beginAccess();
  v1 = sub_10025C9B0(&qword_1006D8110);
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1002DCA5C(uint64_t a1)
{
  v9 = a1;
  v10 = sub_10025C9B0(&qword_1006D8110);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v5 = &v2 - v3;
  v4 = sub_1000206C4();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1002DCBB0()
{
  sub_1000206C4();
  swift_beginAccess();
  sub_10025C9B0(&qword_1006D8110);
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v1 & 1;
}

uint64_t sub_1002DCC2C()
{
  v1 = sub_10025C9B0(&qword_1006D8110);
  sub_10002094C(v1, qword_1006EFF38);
  sub_1000208F4(v1, qword_1006EFF38);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("+hasMoreThanTenEmails", 0x15uLL, 1);
  type metadata accessor for Tips.ParameterOption();
  _allocateUninitializedArray<A>(_:)();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1002DCD10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002DC194();
  swift_beginAccess();
  v1 = sub_10025C9B0(&qword_1006D8110);
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1002DCDA0(uint64_t a1)
{
  v9 = a1;
  v10 = sub_10025C9B0(&qword_1006D8110);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v5 = &v2 - v3;
  v4 = sub_1002DC194();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1002DCEF4()
{
  sub_1002DC194();
  swift_beginAccess();
  sub_10025C9B0(&qword_1006D8110);
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v1 & 1;
}

uint64_t sub_1002DCF70()
{
  sub_1002DC194();
  swift_beginAccess();
  sub_10025C9B0(&qword_1006D8110);
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_1002DD004()
{
  v1 = sub_10025C9B0(&qword_1006D8110);
  sub_10002094C(v1, qword_1006EFF50);
  sub_1000208F4(v1, qword_1006EFF50);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("+hasOneUnread", 0xDuLL, 1);
  type metadata accessor for Tips.ParameterOption();
  _allocateUninitializedArray<A>(_:)();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1002DD0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002DC410();
  swift_beginAccess();
  v1 = sub_10025C9B0(&qword_1006D8110);
  (*(*(v1 - 8) + 16))(a1, v3);
  return swift_endAccess();
}

uint64_t sub_1002DD178(uint64_t a1)
{
  v9 = a1;
  v10 = sub_10025C9B0(&qword_1006D8110);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v5 = &v2 - v3;
  v4 = sub_1002DC410();
  (*(v7 + 16))(v5, v9, v10);
  v6 = &v11;
  swift_beginAccess();
  (*(v7 + 40))(v4, v5, v10);
  swift_endAccess();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_1002DD2CC()
{
  sub_1002DC410();
  swift_beginAccess();
  sub_10025C9B0(&qword_1006D8110);
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v1 & 1;
}

uint64_t sub_1002DD348()
{
  sub_1002DC410();
  swift_beginAccess();
  sub_10025C9B0(&qword_1006D8110);
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

unint64_t sub_1002DD408()
{
  v2 = qword_1006D8128;
  if (!qword_1006D8128)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DD484()
{
  v2 = qword_1006D8140;
  if (!qword_1006D8140)
  {
    sub_10025CAA4(&qword_1006D8138);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8140);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DD50C()
{
  v2 = qword_1006D8150;
  if (!qword_1006D8150)
  {
    sub_10025CAA4(&qword_1006D8148);
    sub_1002DD5B4();
    sub_1002DD63C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8150);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DD5B4()
{
  v2 = qword_1006D8158;
  if (!qword_1006D8158)
  {
    sub_10025CAA4(&qword_1006D8138);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DD63C()
{
  v2 = qword_1006D8160;
  if (!qword_1006D8160)
  {
    sub_10025CAA4(&qword_1006D8130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8160);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DD6DC()
{
  v2 = qword_1006D8168;
  if (!qword_1006D8168)
  {
    sub_10025CAA4(&qword_1006D8130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8168);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002DD764()
{
  v4 = sub_10025C9B0(&qword_1006D8170);
  _allocateUninitializedArray<A>(_:)();
  v3 = v0;
  *v0 = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Red", 3uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v2 = *(*(v4 - 8) + 72);
  v3[v2] = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Orange", 6uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v3[2 * v2] = 2;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Yellow", 6uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v3[3 * v2] = 3;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Green", 5uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v3[4 * v2] = 4;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Blue", 4uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v3[5 * v2] = 5;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Purple", 6uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v3[6 * v2] = 6;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Gray", 4uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v3[7 * v2] = 7;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unflag", 6uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v3[8 * v2] = 8;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Default", 7uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  sub_1002612B0();
  type metadata accessor for DisplayRepresentation();
  sub_1002DDB14();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_1006EFF68 = result;
  return result;
}

unint64_t sub_1002DDB14()
{
  v2 = qword_1006D8178;
  if (!qword_1006D8178)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8178);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1002DDB90()
{
  if (qword_1006D5E80 != -1)
  {
    swift_once();
  }

  return &qword_1006EFF68;
}

uint64_t sub_1002DDBF0()
{
  v1 = *sub_1002DDB90();

  return v1;
}

uint64_t sub_1002DDC20()
{
  v12 = "Color of flag to set";
  v0 = sub_10025C9B0(&qword_1006D6280);
  v3 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v23 = &v2 - v3;
  v7 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v16 = &v2 - v4;
  v5 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v15 = &v2 - v5;
  v6 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v13 = &v2 - v6;
  v20 = type metadata accessor for LocalizedStringResource();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v8 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v22 = &v2 - v8;
  v10 = type metadata accessor for TypeDisplayRepresentation();
  v9 = qword_1006EFF70;
  sub_10002094C(v10, qword_1006EFF70);
  v21 = sub_1000208F4(v10, v9);
  v11 = 10;
  v19 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Flag Color", 0xAuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", v11, v19 & 1);
  sub_100015CC0();
  sub_10025D410(v16);
  v24 = v12;
  v25 = 20;
  v26 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v23, v19, v19, v20);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1002DDF40()
{
  if (qword_1006D5E88 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  return sub_1000208F4(v0, qword_1006EFF70);
}

uint64_t sub_1002DDFAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002DDF40();
  v1 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1002DE010(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
  }

  return 0;
}

NSNumber sub_1002DE170(char a1)
{
  sub_1002DE010(a1);
  if (v1)
  {
    return 0;
  }

  ConversationNavigationBarItemType.rawValue.getter();
  return UInt._bridgeToObjectiveC()();
}

uint64_t sub_1002DE1E0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = "red";
  *(v3 + 8) = 3;
  *(v3 + 16) = 2;
  *(v3 + 24) = "orange";
  *(v3 + 32) = 6;
  *(v3 + 40) = 2;
  *(v3 + 48) = "yellow";
  *(v3 + 56) = 6;
  *(v3 + 64) = 2;
  *(v3 + 72) = "green";
  *(v3 + 80) = 5;
  *(v3 + 88) = 2;
  *(v3 + 96) = "blue";
  *(v3 + 104) = 4;
  *(v3 + 112) = 2;
  *(v3 + 120) = "purple";
  *(v3 + 128) = 6;
  *(v3 + 136) = 2;
  *(v3 + 144) = "gray";
  *(v3 + 152) = 4;
  *(v3 + 160) = 2;
  *(v3 + 168) = "noColor";
  *(v3 + 176) = 7;
  *(v3 + 184) = 2;
  *(v3 + 192) = "defaultColor";
  *(v3 + 200) = 12;
  *(v3 + 208) = 2;
  sub_1002612B0();
  v8 = _findStringSwitchCase(cases:string:)(v2, v7);

  switch(v8)
  {
    case 0:
      v6 = 0;
LABEL_20:

      return v6;
    case 1:
      v6 = 1;
      goto LABEL_20;
    case 2:
      v6 = 2;
      goto LABEL_20;
    case 3:
      v6 = 3;
      goto LABEL_20;
    case 4:
      v6 = 4;
      goto LABEL_20;
    case 5:
      v6 = 5;
      goto LABEL_20;
    case 6:
      v6 = 6;
      goto LABEL_20;
    case 7:
      v6 = 7;
      goto LABEL_20;
    case 8:
      v6 = 8;
      goto LABEL_20;
  }

  return 9;
}

uint64_t sub_1002DE508()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  sub_1002612B0();
  return result;
}

uint64_t sub_1002DE590(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("red", 3uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("orange", 6uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("yellow", 6uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("green", 5uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("blue", 4uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("purple", 6uLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("gray", 4uLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("noColor", 7uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("defaultColor", 0xCuLL, 1)._countAndFlagsBits;
  }
}

unint64_t sub_1002DE810()
{
  v2 = qword_1006D8180;
  if (!qword_1006D8180)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8180);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002DE95C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002DE1E0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1002DE994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002DE590(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002DEA18()
{
  v2 = qword_1006D8188;
  if (!qword_1006D8188)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8188);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DEAE4()
{
  v2 = qword_1006D8190;
  if (!qword_1006D8190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8190);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002DEB60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002DE508();
  *a1 = result;
  return result;
}

unint64_t sub_1002DEBA4()
{
  v2 = qword_1006D8198;
  if (!qword_1006D8198)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DEC38()
{
  v2 = qword_1006D81A0;
  if (!qword_1006D81A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D81A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DECCC()
{
  v2 = qword_1006D81A8;
  if (!qword_1006D81A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D81A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DED78()
{
  v2 = qword_1006D81B0;
  if (!qword_1006D81B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D81B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DEE0C()
{
  v2 = qword_1006D81B8;
  if (!qword_1006D81B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D81B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DEEA0()
{
  v2 = qword_1006D81C0;
  if (!qword_1006D81C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D81C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DEFA8()
{
  v2 = qword_1006D81C8;
  if (!qword_1006D81C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D81C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DF03C()
{
  v2 = qword_1006D81D0;
  if (!qword_1006D81D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D81D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002DF0E8()
{
  v2 = qword_1006D81D8;
  if (!qword_1006D81D8)
  {
    sub_10025CAA4(&unk_1006D81E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D81D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002DF170(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1002DF2D8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_1002DF4E8@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v29 = 0;
  v28 = sub_1002DFB2C;
  v1 = sub_10025C9B0(&qword_1006D81F0);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v32 = &v9 - v9;
  v23 = sub_10025C9B0(&qword_1006D81F8);
  v21 = *(v23 - 8);
  v22 = v23 - 8;
  v10 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v25 = &v9 - v10;
  v11 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v10);
  v20 = &v9 - v11;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v9 - v11);
  v24 = &v9 - v12;
  v31 = sub_1002DF920();
  v30 = &unk_100659F68;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Forward ", 8uLL, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D8208);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" to ", 4uLL, v26 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  v16 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D8210);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(" with ", 6uLL, v26 & 1);
  v17 = v6._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);

  v18 = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D8218);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v26 & 1);
  v19 = v7._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v7);

  (*(v21 + 16))(v20, v24, v23);
  (*(v21 + 32))(v25, v20, v23);
  (*(v21 + 8))(v24, v23);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v26 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:_:)();
}

unint64_t sub_1002DF920()
{
  v2 = qword_1006D8200;
  if (!qword_1006D8200)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002DF99C()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

_BYTE *sub_1002DF9F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002DF99C();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_1002DFA5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288E04();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_1002DFAC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100288D44();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

uint64_t sub_1002DFB2C()
{
  swift_getKeyPath();
  sub_1002DF920();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v3 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v4 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  swift_getKeyPath();
  v5 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10025C9B0(&qword_1006D82E8);
  _allocateUninitializedArray<A>(_:)();
  *v0 = v2;
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  sub_1002612B0();
  v6 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v6;
}

_BYTE *sub_1002DFCF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289148();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_1002DFD58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289208();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_1002DFDC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002892C8();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

_BYTE *sub_1002DFE28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002E1A40(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_100289388();
  result = __dst;
  *a2 = v2;
  sub_1002E4218();
  return result;
}

uint64_t sub_1002DFE9C(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 40);

  sub_100289B6C(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100285F68(v6);
}

void *sub_1002DFF74@<X0>(void *a1@<X8>)
{
  v5 = v1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a1, __dst, 0x80uLL);
}

void *sub_1002DFFF8(void *a1)
{
  v7 = a1;
  v6 = v1;

  sub_1002E0080(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10027D9CC();
  return result;
}

void *sub_1002E0080(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];

  a2[1] = v3;
  v4 = a1[2];

  a2[2] = v4;
  v5 = a1[3];

  a2[3] = v5;
  v6 = a1[4];

  a2[4] = v6;
  v7 = a1[5];

  a2[5] = v7;
  v8 = a1[6];

  a2[6] = v8;
  v9 = a1[7];

  a2[7] = v9;
  v10 = a1[8];

  a2[8] = v10;
  v11 = a1[9];

  a2[9] = v11;
  v12 = a1[10];

  a2[10] = v12;
  v13 = a1[11];

  a2[11] = v13;
  v14 = a1[12];

  a2[12] = v14;
  v15 = a1[13];

  a2[13] = v15;
  v17 = a1[14];

  a2[14] = v17;
  v19 = a1[15];

  result = a2;
  a2[15] = v19;
  return result;
}

uint64_t sub_1002E024C(uint64_t a1)
{
  v2[115] = v1;
  v2[114] = a1;
  v2[98] = v2;
  v2[99] = 0;
  v2[100] = 0;
  v2[105] = 0;
  v2[110] = 0;
  v2[111] = 0;
  v2[112] = 0;
  v3 = type metadata accessor for Logger();
  v2[116] = v3;
  v2[117] = *(v3 - 8);
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  sub_10025C9B0(&qword_1006D7DF0);
  v2[120] = swift_task_alloc();
  v4 = type metadata accessor for MailMessageEntityID();
  v2[121] = v4;
  v2[122] = *(v4 - 8);
  v2[123] = swift_task_alloc();
  v2[99] = v1;
  type metadata accessor for MainActor();
  v2[124] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[125] = v7;
  v2[126] = v5;

  return _swift_task_switch(sub_1002E0458, v7);
}

uint64_t sub_1002E0458()
{
  *(v0 + 784) = v0;
  v57 = sub_100289454();
  sub_10035277C();
  v53 = *(v56 + 920);
  _objc_release(v57);
  v54 = swift_allocObject();
  *(v56 + 1016) = v54;
  *(v56 + 800) = v54 + 2;
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = 0;
  v54[5] = 0;
  memcpy((v56 + 216), v53, 0x48uLL);
  *(v56 + 1024) = sub_1002887A0();
  v55 = sub_100286A40();
  if (v55)
  {
    *(v56 + 904) = &OBJC_PROTOCOL___ComposeCapable;
    v52 = swift_dynamicCastObjCProtocolConditional();
    if (v52)
    {
      v51 = v52;
    }

    else
    {
      _objc_release(v55);
      v51 = 0;
    }

    v50 = v51;
  }

  else
  {
    v50 = 0;
  }

  *(v56 + 1032) = v50;
  if (v50)
  {
    v49 = *(v56 + 968);
    v48 = *(v56 + 960);
    v47 = *(v56 + 976);
    *(v56 + 840) = v50;
    sub_1002DFF74((v56 + 16));

    sub_10027D9CC();
    MailMessageEntityID.init(with:)();
    if ((*(v47 + 48))(v48, 1, v49) != 1)
    {
      (*(*(v56 + 976) + 32))(*(v56 + 984), *(v56 + 960), *(v56 + 968));
      v45 = sub_100289454();
      v46 = [v45 daemonInterface];
      _objc_release(v45);
      if (!v46)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v43 = [v46 messageRepository];
      _objc_release(v46);
      v44 = EMMessageRepository.message(forMailMessageEntityID:)();
      *(v56 + 1040) = v44;
      _objc_release(v43);
      *(v56 + 880) = v44;
      *(v56 + 1048) = sub_10028D4AC();
      _objc_retain(v44);
      v40 = sub_100289CFC();
      v41 = v2;
      v42 = v3;
      *(v56 + 1056) = v40;
      *(v56 + 1064) = v2;
      *(v56 + 1072) = v3;
      v4 = swift_task_alloc();
      *(v56 + 1080) = v4;
      *v4 = *(v56 + 784);
      v4[1] = sub_1002E1230;

      return sub_100286504(v44, v40, v41, v42);
    }

    v5 = *(v56 + 952);
    v36 = *(v56 + 928);
    v35 = *(v56 + 936);
    sub_1002C1698(*(v56 + 960));
    v6 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v35 + 16))(v5, v6, v36);
    oslog = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v39 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v37))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v32 = sub_1002641E8(0);
      v33 = sub_1002641E8(0);
      *(v56 + 848) = buf;
      *(v56 + 856) = v32;
      *(v56 + 864) = v33;
      sub_10026423C(0, (v56 + 848));
      sub_10026423C(0, (v56 + 848));
      *(v56 + 872) = v39;
      v34 = swift_task_alloc();
      v34[2] = v56 + 848;
      v34[3] = v56 + 856;
      v34[4] = v56 + 864;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v37, "#SiriMail ForwardMessageIntent perform: failed to get uniqueIdentifier, throwing error", buf, 2u);
      sub_10026429C(v32);
      sub_10026429C(v33);
      UnsafeMutablePointer.deallocate()();
    }

    v28 = *(v56 + 952);
    v29 = *(v56 + 928);
    v27 = *(v56 + 936);
    _objc_release(oslog);
    (*(v27 + 8))(v28, v29);
    v30 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v30 - 8) + 104))(v7, enum case for ToolboxErrors.noMessagesFound(_:));
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *(v56 + 944);
    v23 = *(v56 + 928);
    v22 = *(v56 + 936);
    v9 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v22 + 16))(v8, v9, v23);
    log = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v26 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(log, v24))
    {
      v18 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v19 = sub_1002641E8(0);
      v20 = sub_1002641E8(0);
      *(v56 + 808) = v18;
      *(v56 + 816) = v19;
      *(v56 + 824) = v20;
      sub_10026423C(0, (v56 + 808));
      sub_10026423C(0, (v56 + 808));
      *(v56 + 832) = v26;
      v21 = swift_task_alloc();
      v21[2] = v56 + 808;
      v21[3] = v56 + 816;
      v21[4] = v56 + 824;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, log, v24, "Failed to find a scene capable of composing", v18, 2u);
      sub_10026429C(v19);
      sub_10026429C(v20);
      UnsafeMutablePointer.deallocate()();
    }

    v14 = *(v56 + 944);
    v15 = *(v56 + 928);
    __src = *(v56 + 920);
    v13 = *(v56 + 936);
    _objc_release(log);
    (*(v13 + 8))(v14, v15);
    sub_10028B33C();
    swift_allocError();
    v17 = v10;
    sub_1002E1A40(__src, (v56 + 288));
    *(v17 + 24) = &unk_100659F68;
    *(v17 + 32) = sub_1002DF920();
    v11 = swift_allocObject();
    *v17 = v11;
    memcpy((v11 + 16), __src, 0x48uLL);
    *(v17 + 40) = 0;
    swift_willThrow();
  }

  v12 = *(*(v56 + 784) + 8);

  return v12();
}

uint64_t sub_1002E1230(uint64_t a1)
{
  v6 = *v1;
  v5 = *v1;
  v4 = *(*v1 + 1056);
  *(v5 + 784) = *v1;
  *(v5 + 1088) = a1;

  sub_100289E1C(v4);
  v2 = *(v6 + 1000);

  return _swift_task_switch(sub_1002E13CC, v2);
}

uint64_t sub_1002E13CC()
{
  v1 = v0[136];
  v2 = v0[130];
  v23 = v0[129];
  v22 = v0[115];
  v0[98] = v0;
  v24 = sub_1002E1B5C(v2, v1);
  v0[111] = v24;
  memcpy(v0 + 45, v22, 0x48uLL);
  sub_100282548(v24);
  memcpy(v0 + 54, v22, 0x48uLL);
  sub_100286C38(v23, v24);
  v25 = [v24 attachments];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[112] = v26;
  _objc_release(v25);
  v27 = [objc_opt_self() defaultCenter];
  v28 = MFMailComposeControllerDidLaunchNotification;
  _objc_retain(MFMailComposeControllerDidLaunchNotification);
  v0[91] = 0;
  v0[92] = 0;
  v0[93] = 0;
  v0[94] = 0;
  if (v0[94])
  {
    v17 = *(v21 + 752);
    v15 = sub_10027EC3C((v21 + 728), v17);
    v16 = *(v17 - 8);
    v18 = swift_task_alloc();
    (*(v16 + 16))(v18, v15, v17);
    v19 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v18, v17);

    sub_1000160F4(v21 + 728);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v10 = *(v21 + 1040);
  v13 = *(v21 + 1016);
  v14 = *(v21 + 984);
  v12 = *(v21 + 968);
  __src = *(v21 + 920);
  v11 = *(v21 + 976);
  v8 = [objc_opt_self() mainQueue];
  sub_1002E1A40(__src, (v21 + 504));

  v6 = swift_allocObject();
  memcpy(v6 + 2, __src, 0x48uLL);
  v6[11] = v26;
  v6[12] = v13;
  *(v21 + 680) = sub_1002E3A38;
  *(v21 + 688) = v6;
  *(v21 + 648) = _NSConcreteStackBlock;
  *(v21 + 656) = 1107296256;
  *(v21 + 660) = 0;
  *(v21 + 664) = sub_10028C0DC;
  *(v21 + 672) = &unk_100659ED8;
  aBlock = _Block_copy((v21 + 648));

  v9 = [v27 addObserverForName:v28 object:v20 queue:v8 usingBlock:aBlock];
  _Block_release(aBlock);
  _objc_release(v8);
  swift_unknownObjectRelease();
  _objc_release(v28);
  _objc_release(v27);
  *(v21 + 720) = swift_getObjectType();
  *(v21 + 696) = v9;
  swift_beginAccess();
  sub_10028D584((v21 + 696), v13 + 16);
  swift_endAccess();
  _objc_retain(v10);
  sub_1002CD3D8(v10, (v21 + 144));
  memcpy((v21 + 576), (v21 + 144), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0();

  _objc_release(v24);
  _objc_release(v10);
  (*(v11 + 8))(v14, v12);
  swift_unknownObjectRelease();

  v3 = *(*(v21 + 784) + 8);

  return v3();
}

void *sub_1002E1A40(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];

  a2[3] = v6;
  v7 = a1[4];

  a2[4] = v7;
  v8 = a1[5];

  a2[5] = v8;
  v9 = a1[6];

  a2[6] = v9;
  v11 = a1[7];

  a2[7] = v11;
  v13 = a1[8];

  result = a2;
  a2[8] = v13;
  return result;
}

void sub_1002E1BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v100 = a4;
  v99 = a3;
  v101 = a1;
  v94 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v120 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v108 = 0;
  v95 = type metadata accessor for URL();
  v96 = *(v95 - 8);
  v97 = v96;
  __chkstk_darwin(v95 - 8);
  v98 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = (*(*(sub_10025C9B0(&qword_1006D7250) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v101);
  v103 = &v17 - v102;
  v136 = v6;
  v135 = a2;
  v134 = v7;
  v104 = v8 + 16;
  v133 = v8 + 16;
  v105 = sub_100289454();
  v107 = sub_10035333C();
  v106 = v107;

  if (v107)
  {
    v93 = v106;
    v90 = v106;
    v91 = [v106 composeWebView];

    v92 = v91;
  }

  else
  {
    v92 = 0;
  }

  v89 = v92;
  if (v92)
  {
    v88 = v89;
    v86 = v89;
    v132 = v89;

    v129 = v99;
    v87 = sub_10025C9B0(&unk_1006D74B0);
    sub_10028E3AC();
    Collection<>.makeIterator()();
    while (1)
    {
      sub_10025C9B0(&unk_1006D74C0);
      IndexingIterator.next()();
      if (!v128)
      {
        break;
      }

      sub_10028E434();
      if (swift_dynamicCast())
      {
        v84 = v121;
      }

      else
      {
        v84 = 0;
      }

      v83 = v84;
      if (v84)
      {
        v82 = v83;
        v80 = v83;
        v120 = v83;
        v9 = [v83 fetchLocalData];
        v81 = v9;
        if (v9)
        {
          v79 = v81;
          v74 = v81;
          v75 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v10;

          v77 = v75;
          v78 = v76;
        }

        else
        {
          v77 = 0;
          v78 = 0xF000000000000000;
        }

        v116 = v77;
        v117 = v78;
        v11 = v80;
        if (v117 >> 60 == 15)
        {
          v73 = [v80 fetchDataSynchronously:0 stripPrivateMetadata:0];
          if (v73)
          {
            v72 = v73;
            v67 = v73;
            v68 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v69 = v12;

            v70 = v68;
            v71 = v69;
          }

          else
          {
            v70 = 0;
            v71 = 0xF000000000000000;
          }

          v65 = v71;
          v66 = v70;
          if (v71 >> 60 == 15)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          else
          {
            v63 = v66;
            v64 = v65;
            v118 = v66;
            v119 = v65;
            if (v117 >> 60 != 15)
            {
              sub_10028E498(&v116);
            }
          }
        }

        else
        {
          v118 = v116;
          v119 = v117;
        }

        v60 = v118;
        v61 = v119;
        v114 = v118;
        v115 = v119;
        v62 = [v80 url];
        if (v62)
        {
          v59 = v62;
          v58 = v62;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          (*(v97 + 32))(v103, v98, v95);
          (*(v97 + 56))(v103, 0, 1, v95);
        }

        else
        {
          (*(v97 + 56))(v103, 1, 1, v95);
        }

        if ((*(v97 + 48))(v103, 1, v95) == 1)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v55 = URL.absoluteString.getter();
        v56 = v13;
        v112 = v55;
        v113 = v13;
        (*(v97 + 8))(v103, v95);
        v57 = [v80 mimeType];
        if (v57)
        {
          v54 = v57;
          v49 = v57;
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v14;

          v52 = v50;
          v53 = v51;
        }

        else
        {
          v52 = 0;
          v53 = 0;
        }

        v47 = v53;
        v48 = v52;
        if (v53)
        {
          v45 = v48;
          v46 = v47;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v42 = v46;
        v43 = v45;
        v110 = v45;
        v111 = v46;
        v44 = [v80 contentID];
        if (v44)
        {
          v41 = v44;
          v36 = v44;
          v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v15;

          v39 = v37;
          v40 = v38;
        }

        else
        {
          v39 = 0;
          v40 = 0;
        }

        v34 = v40;
        v35 = v39;
        if (v40)
        {
          v32 = v35;
          v33 = v34;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v31 = v33;
        v26 = v32;
        v108 = v32;
        v109 = v33;
        sub_10028E4E8(v60, v61);
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100288010(v60, v61);

        v29 = String._bridgeToObjectiveC()();

        v28 = String._bridgeToObjectiveC()();

        v27 = String._bridgeToObjectiveC()();

        [v86 replaceFilenamePlaceholderWithAttachment:isa fileName:v29 mimeType:v28 contentID:v27];

        sub_100288010(v60, v61);
      }
    }

    sub_100264880();
    v85 = &v126;
    swift_beginAccess();
    sub_100015DA0(v104, v124);
    swift_endAccess();
    if (v125)
    {
      v25 = v127;
      sub_100014898(v124, v127);
      v24 = [objc_opt_self() defaultCenter];
      v22 = v122;
      sub_10026F5D4(v25, v122);
      v19 = v123;
      sub_10027EC3C(v22, v123);
      v17 = *(v19 - 8);
      v18 = v17;
      v21 = &v17;
      __chkstk_darwin(&v17);
      v20 = &v17 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      v23 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v20, v19);
      sub_1000160F4(v22);
      [v24 removeObserver:{v23, v17}];
      swift_unknownObjectRelease();

      sub_1000160F4(v25);
    }

    else
    {
      sub_10000B0D8(v124);
    }
  }
}

void *sub_1002E2774@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v63 = v76;
  v65 = 72;
  memset(v76, 0, sizeof(v76));
  v36 = sub_10025C9B0(&unk_1006D7380);
  v12 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v36);
  v37 = &v12 - v12;
  v1 = sub_10025C9B0(&unk_1006D8270);
  v13 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v35 = &v12 - v13;
  v42 = 0;
  v2 = type metadata accessor for InputConnectionBehavior();
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v61 = &v12 - v14;
  v15 = (*(*(sub_10025C9B0(&unk_1006D7080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v42);
  v60 = &v12 - v15;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v59 = &v12 - v16;
  v26 = type metadata accessor for IntentPerson.ParameterMode();
  v20 = *(v26 - 8);
  v21 = v26 - 8;
  v17 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v32 = &v12 - v17;
  v5 = sub_10025C9B0(&qword_1006D6280);
  v18 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v57 = &v12 - v18;
  sub_10025C9B0(&unk_1006D7090);
  v19 = v75;
  memset(v75, 0, sizeof(v75));
  sub_10000B074();
  sub_1003DC7F0();
  v76[0] = AppDependency.__allocating_init(key:manager:)();
  v24 = sub_10025C9B0(&unk_1006D7410);
  v48 = type metadata accessor for LocalizedStringResource();
  v6 = *(v48 - 8);
  v50 = *(v6 + 56);
  v49 = v6 + 56;
  v52 = 1;
  v50(v57, 1);
  v22 = &v74;
  v74 = 0;
  v25 = &enum case for IntentPerson.ParameterMode.email(_:);
  v28 = *(v20 + 104);
  v27 = v20 + 104;
  v28(v32, enum case for IntentPerson.ParameterMode.email(_:), v26);
  v53 = type metadata accessor for IntentDialog();
  v7 = *(v53 - 8);
  v55 = *(v7 + 56);
  v54 = v7 + 56;
  v55(v59, v52);
  v29 = sub_10025C9B0(&unk_1006D7160);
  v30 = sub_10028035C();
  sub_1003BD8F8(v61);
  v76[1] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v50)(v57, v52, v52, v48);
  v23 = &v73;
  v73 = 0;
  v28(v32, *v25, v26);
  (v55)(v59, v52, v52, v53);
  sub_1003BD8F8(v61);
  v76[2] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v50)(v57, v52, v52, v48);
  v31 = &v72;
  v72 = 0;
  v28(v32, *v25, v26);
  (v55)(v59, v52, v52, v53);
  sub_1003BD8F8(v61);
  v76[3] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7430);
  (v50)(v57, v52, v52, v48);
  v34 = v71;
  v71[0] = 0;
  v71[1] = 0;
  v8 = type metadata accessor for String.IntentInputOptions();
  (*(*(v8 - 8) + 56))(v35, v52);
  (v55)(v59, v52, v52, v53);
  v33 = sub_10025C9B0(&unk_1006D7340);
  sub_10028DF54();
  sub_1003BD8F8(v61);
  v76[4] = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7450);
  (v50)(v57, v52, v52, v48);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 56))(v37, v52);
  (v55)(v59, v52, v52, v53);
  sub_10028E064();
  sub_1003BD8F8(v61);
  v76[5] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D82A0);
  (v50)(v57, v52, v52, v48);
  v40 = v70;
  memset(v70, 0, sizeof(v70));
  (v55)(v59, v52, v52, v53);
  (v55)(v60, v52, v52, v53);
  v39 = sub_10025C9B0(&unk_1006D7470);
  v38 = sub_10028E17C();
  v41 = sub_100264788();
  sub_1003BD8F8(v61);
  v76[6] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7490);
  (v50)(v57, v52, v52, v48);
  v46 = &v69;
  v69 = 0;
  v44 = type metadata accessor for UTType();
  v43 = _allocateUninitializedArray<A>(_:)();
  static UTType.item.getter();
  v10 = v43;
  sub_1002612B0();
  v47 = v10;
  (v55)(v59, v52, v52, v53);
  v45 = sub_10025C9B0(&unk_1006D7270);
  sub_10028E214();
  sub_1003BD8F8(v61);
  v76[7] = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DBAE0);
  (v50)(v57, v52, v52, v48);
  v51 = v77;
  sub_1002E41D4(v77);
  v58 = v68;
  memcpy(v68, v51, sizeof(v68));
  (v55)(v59, v52, v52, v53);
  (v55)(v60, v52, v52, v53);
  v56 = sub_10027D1BC();
  v62 = sub_10027EAAC();
  sub_1003BD8F8(v61);
  v76[8] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v64 = __dst;
  memcpy(__dst, v63, v65);
  sub_1002E1A40(v64, v67);
  sub_1002E4218();
  return memcpy(v66, v64, v65);
}

uint64_t sub_1002E33D0()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006EFF88;
  sub_10002094C(v7, qword_1006EFF88);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_1002E3510();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1002E3510()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ForwardMailIntent", 0x11uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1002E35E8()
{
  if (qword_1006D5E90 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006EFF88);
}

uint64_t sub_1002E3654@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002E35E8();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1002E3708(uint64_t a1)
{
  *(v2 + 88) = v2;
  memcpy((v2 + 16), v1, 0x48uLL);
  v3 = swift_task_alloc();
  *(v5 + 96) = v3;
  *v3 = *(v5 + 88);
  v3[1] = sub_1002E37D0;

  return sub_1002E024C(a1);
}

uint64_t sub_1002E37D0()
{
  v2 = *v1;
  *(v2 + 88) = *v1;
  v5 = v2 + 88;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

id sub_1002E39D0(void *a1, void *a2)
{
  v6 = [v2 initForwardOfMessage:? legacyMessage:?];
  _objc_release(a2);
  _objc_release(a1);
  return v6;
}

uint64_t sub_1002E3A48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1002E3AAC()
{
  v2 = qword_1006D8228;
  if (!qword_1006D8228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002E3B28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002E3C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1002E3E38()
{
  v2 = qword_1006D8230;
  if (!qword_1006D8230)
  {
    sub_10025CAA4(&qword_1006D8238);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002E3ED8(uint64_t a1)
{
  result = sub_1002DF920();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002E3F1C()
{
  v2 = qword_1006D8250;
  if (!qword_1006D8250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002E3F98(uint64_t a1)
{
  result = sub_1002E3FC4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1002E3FC4()
{
  v2 = qword_1006D8258;
  if (!qword_1006D8258)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8258);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002E4058()
{
  v2 = qword_1006D8260;
  if (!qword_1006D8260)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002E40EC()
{
  v2 = qword_1006D8268;
  if (!qword_1006D8268)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8268);
    return WitnessTable;
  }

  return v2;
}

void *sub_1002E41D4(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1002E4218()
{
}

uint64_t sub_1002E42A4()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006D82F0);
  sub_1000208F4(v1, qword_1006D82F0);
  type metadata accessor for GeneratedSummaryViewCell();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_1002E4334()
{
  if (qword_1006D5E98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006D82F0);
}

uint64_t sub_1002E43A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002E4334();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_1002E440C()
{
  v2 = (v0 + OBJC_IVAR___MFGeneratedSummaryViewCell_summaryViewManager);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002E447C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR___MFGeneratedSummaryViewCell_summaryViewManager);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002E4514()
{
  v2 = (v0 + OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002E4584(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t GeneratedSummaryViewCell.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t GeneratedSummaryViewCell.delegate.setter()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*GeneratedSummaryViewCell.delegate.modify(void *a1))(void **a1, char a2)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR___MFGeneratedSummaryViewCell_delegate;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_10029464C;
}

id GeneratedSummaryViewCell.viewModel.getter()
{
  ObjectType = swift_getObjectType();
  v6 = v0;
  _objc_retain(v0);
  v5.receiver = v0;
  v5.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v5, "viewModel");
  _objc_release(v3);
  return v4;
}

void GeneratedSummaryViewCell.viewModel.setter(void *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v7 = v1;
  _objc_retain(v1);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v6, "viewModel");
  _objc_release(v1);
  _objc_retain(v1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  objc_msgSendSuper2(&v5, "setViewModel:", a1);
  _objc_release(v1);
  sub_1002E4ADC(v3);
  _objc_release(v3);
  _objc_release(a1);
}

void sub_1002E4ADC(void *a1)
{
  v12 = a1;
  v11 = v1;
  v5 = GeneratedSummaryViewCell.viewModel.getter();
  _objc_retain(v5);
  v10 = a1;
  v8 = v5;
  sub_1002935A0(&v10, &v9);
  if (v5)
  {
    sub_1002935A0(&v8, &v7);
    if (v9)
    {
      v6 = v9;
      sub_1002E4E78();
      v2 = static NSObject.== infix(_:_:)();
      _objc_release(v6);
      _objc_release(v7);
      sub_10026A58C(&v8);
      v3 = v2;
      goto LABEL_7;
    }

    _objc_release(v7);
    goto LABEL_9;
  }

  if (v9)
  {
LABEL_9:
    sub_1002E4C54(&v8);
    v3 = 0;
    goto LABEL_7;
  }

  sub_10026A58C(&v8);
  v3 = 1;
LABEL_7:
  _objc_release(v5);
  if ((v3 & 1) == 0)
  {
    sub_1002E4C9C();
  }
}

id *sub_1002E4C54(id *a1)
{
  _objc_release(*a1);
  _objc_release(a1[1]);
  return a1;
}

void sub_1002E4C9C()
{
  v9[1] = 0;
  v9[0] = GeneratedSummaryViewCell.viewModel.getter();
  if (v9[0])
  {
    v5 = v9[0];
    _objc_retain(v9[0]);
    sub_10026A58C(v9);
    v6 = [v5 manualSummaryViewModel];
    _objc_release(v5);
    v7 = v6;
  }

  else
  {
    sub_10026A58C(v9);
    v7 = 0;
  }

  if (v7)
  {
    type metadata accessor for MUIManualSummaryViewManager();
    _objc_retain(v7);
    _objc_retain(v8);
    v1 = &v8[OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView];
    swift_beginAccess();
    v2 = *v1;
    _objc_retain(*v1);
    swift_endAccess();
    v4 = sub_1002E5888(v7, v8, v2);
    v3 = &v8[OBJC_IVAR___MFGeneratedSummaryViewCell_summaryViewManager];
    swift_beginAccess();
    v0 = *v3;
    *v3 = v4;
    _objc_release(v0);
    swift_endAccess();
    _objc_release(v7);
  }
}

unint64_t sub_1002E4E78()
{
  v2 = qword_1006D8320;
  if (!qword_1006D8320)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D8320);
    return ObjCClassMetadata;
  }

  return v2;
}

void (*GeneratedSummaryViewCell.viewModel.modify(id *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = GeneratedSummaryViewCell.viewModel.getter();
  return sub_1002E4F38;
}

void sub_1002E4F38(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    _objc_retain(*a1);
    GeneratedSummaryViewCell.viewModel.setter(v2);
    sub_10026A58C(a1);
  }

  else
  {
    GeneratedSummaryViewCell.viewModel.setter(*a1);
  }
}

double sub_1002E4FAC()
{
  v2 = (v0 + OBJC_IVAR___MFGeneratedSummaryViewCell_cachedWidth);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1002E5010(double a1)
{
  v3 = (v1 + OBJC_IVAR___MFGeneratedSummaryViewCell_cachedWidth);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

char *sub_1002E507C(double a1, double a2, double a3, double a4)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  *&v9 = a3;
  *(&v9 + 1) = a4;
  ObjectType = swift_getObjectType();
  v12 = v8;
  v13 = v9;
  v14 = v4;
  *&v4[OBJC_IVAR___MFGeneratedSummaryViewCell_summaryViewManager] = 0;
  v6 = OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView;
  type metadata accessor for ManualSummaryView();
  *&v14[v6] = sub_10025C704();
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR___MFGeneratedSummaryViewCell_cachedWidth] = 0;
  v11.receiver = v14;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, "initWithFrame:", v8, v9);
  _objc_retain(v10);
  v14 = v10;
  _objc_retain(v10);
  [v10 setDisallowsHighlighting:1];
  _objc_release(v10);
  sub_1002E5218();
  _objc_release(v14);
  return v10;
}

void sub_1002E5218()
{
  v6 = &v0[OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView];
  swift_beginAccess();
  v8 = *v6;
  _objc_retain(*v6);
  swift_endAccess();
  _objc_retain(v0);
  v7 = [v0 contentView];
  _objc_release(v0);
  [v7 bounds];
  [v8 setFrame:{v1, v2, v3, v4}];
  _objc_release(v7);
  _objc_release(v8);
  v9 = &v0[OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView];
  swift_beginAccess();
  v10 = *v9;
  _objc_retain(*v9);
  swift_endAccess();
  type metadata accessor for AutoresizingMask();
  _allocateUninitializedArray<A>(_:)();
  *v5 = 16;
  v5[1] = 2;
  sub_1002612B0();
  sub_100266C1C();
  SetAlgebra<>.init(arrayLiteral:)();
  [v10 setAutoresizingMask:v17];
  _objc_release(v10);
  _objc_retain(v15);
  v13 = [v15 contentView];
  _objc_release(v15);
  v11 = &v15[OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView];
  swift_beginAccess();
  v12 = *v11;
  _objc_retain(*v11);
  swift_endAccess();
  [v13 addSubview:v12];
  _objc_release(v12);
  _objc_release(v13);
  _objc_retain(v15);
  [v15 setClipsToBounds:0];
  _objc_release(v15);
  _objc_retain(v15);
  v14 = [v15 contentView];
  _objc_release(v15);
  [v14 setClipsToBounds:0];
  _objc_release(v14);
  _objc_retain(v15);
  v16 = [v15 layer];
  _objc_release(v15);
  [v16 setZPosition:-100.0];
  _objc_release(v16);
}

void sub_1002E562C()
{
  *OBJC_IVAR___MFGeneratedSummaryViewCell_summaryViewManager = 0;
  v0 = OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView;
  type metadata accessor for ManualSummaryView();
  *v0 = sub_10025C704();
  swift_unknownObjectWeakInit();
  *OBJC_IVAR___MFGeneratedSummaryViewCell_cachedWidth = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall GeneratedSummaryViewCell.beginSummarizing()()
{
  v3 = OBJC_IVAR___MFGeneratedSummaryViewCell_summaryViewManager;
  v4 = (v0 + OBJC_IVAR___MFGeneratedSummaryViewCell_summaryViewManager);
  swift_beginAccess();
  if (*v4)
  {
    v1 = *(v2 + v3);
    _objc_retain(v1);
    swift_endAccess();
    [v1 beginSummarizingUsingExternalIntelligence:0];
    _objc_release(v1);
  }

  else
  {
    swift_endAccess();
  }
}

Swift::Void __swiftcall GeneratedSummaryViewCell._displayMetricsDidChange()()
{
  v1 = (v0 + OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView);
  swift_beginAccess();
  v2 = *v1;
  _objc_retain(*v1);
  swift_endAccess();
  [v2 layoutIfNeeded];
  _objc_release(v2);
  v3 = (v0 + OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView);
  swift_beginAccess();
  v4 = *v3;
  _objc_retain(*v3);
  swift_endAccess();
  [v4 setNeedsUpdateConstraints];
  _objc_release(v4);
  sub_1002E59D8();
}

void sub_1002E59D8()
{
  v6 = sub_1002E6AF4;
  v25 = 0;
  v7 = 0;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v3 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v10 = &v3 - v3;
  v15 = type metadata accessor for DispatchQoS();
  v12 = *(v15 - 8);
  v13 = v15 - 8;
  v4 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v14 = &v3 - v4;
  v25 = v0;
  sub_100272A48();
  v17 = static OS_dispatch_queue.main.getter();
  _objc_retain(v5);
  v1 = swift_allocObject();
  v2 = v6;
  *(v1 + 16) = v5;
  v23 = v2;
  v24 = v1;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = 0;
  v21 = sub_1002AEFF8;
  v22 = &unk_10065A060;
  v16 = _Block_copy(&aBlock);

  sub_100274F94();
  sub_100274FAC();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  (*(v8 + 8))(v10, v11);
  (*(v12 + 8))(v14, v15);
  _Block_release(v16);
  _objc_release(v17);
}

Swift::Void __swiftcall GeneratedSummaryViewCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v7 = v0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_endAccess();
  GeneratedSummaryViewCell.viewModel.setter(0);
  v2 = &v5[OBJC_IVAR___MFGeneratedSummaryViewCell_summaryViewManager];
  swift_beginAccess();
  v1 = *v2;
  *v2 = 0;
  _objc_release(v1);
  swift_endAccess();
  _objc_retain(v5);
  v3 = [v5 contentView];
  _objc_release(v5);
  [v3 setAlpha:1.0];
  _objc_release(v3);
  _objc_retain(v5);
  v6.receiver = v5;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, "prepareForReuse");
  _objc_release(v5);
}

UICollectionViewLayoutAttributes __swiftcall GeneratedSummaryViewCell.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes a1)
{
  isa = a1.super.isa;
  v79 = 0;
  v66 = sub_1002E6B60;
  v67 = sub_1002E7154;
  v68 = sub_10026434C;
  v69 = sub_10026434C;
  v70 = sub_1002E71CC;
  ObjectType = swift_getObjectType();
  v106 = 0;
  v105 = 0;
  v103 = 0;
  v96 = 0;
  v95 = 0;
  v71 = 0;
  v72 = type metadata accessor for Logger();
  v73 = *(v72 - 8);
  v74 = v72 - 8;
  v75 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v76 = &v25 - v75;
  v106 = __chkstk_darwin(isa);
  v105 = v1;
  _objc_retain(v1);
  v104.receiver = v1;
  v104.super_class = ObjectType;
  v82 = objc_msgSendSuper2(&v104, "preferredLayoutAttributesFittingAttributes:", isa);
  v103 = v82;
  _objc_release(v1);
  v80 = &v1[OBJC_IVAR___MFGeneratedSummaryViewCell_cachedWidth];
  v81 = &v102;
  swift_beginAccess();
  v83 = *v80;
  swift_endAccess();
  [v82 size];
  v100 = v2;
  v101 = v3;
  if (v83 != v2)
  {
    v4 = v76;
    [v82 size];
    v91 = v5;
    v92 = v6;
    v46 = v5;
    v45 = &v65[OBJC_IVAR___MFGeneratedSummaryViewCell_cachedWidth];
    v47 = &v90;
    v48 = 0;
    swift_beginAccess();
    *v45 = v46;
    swift_endAccess();
    v49 = &v65[OBJC_IVAR___MFGeneratedSummaryViewCell_summaryView];
    v50 = &v89;
    v53 = 32;
    swift_beginAccess();
    v51 = *v49;
    _objc_retain(v51);
    swift_endAccess();
    [v51 setNeedsUpdateConstraints];
    _objc_release(v51);
    v7 = sub_1002E4334();
    (*(v73 + 16))(v4, v7, v72);
    _objc_retain(v65);
    v54 = 7;
    v55 = swift_allocObject();
    *(v55 + 16) = v65;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    v52 = 17;
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    v58 = swift_allocObject();
    *(v58 + 16) = 8;
    v8 = swift_allocObject();
    v9 = v55;
    v56 = v8;
    *(v8 + 16) = v66;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v56;
    v60 = v10;
    *(v10 + 16) = v67;
    *(v10 + 24) = v11;
    v62 = sub_10025C9B0(&unk_1006D7720);
    v59 = _allocateUninitializedArray<A>(_:)();
    v61 = v12;

    v13 = v57;
    v14 = v61;
    *v61 = v68;
    v14[1] = v13;

    v15 = v58;
    v16 = v61;
    v61[2] = v69;
    v16[3] = v15;

    v17 = v60;
    v18 = v61;
    v61[4] = v70;
    v18[5] = v17;
    sub_1002612B0();

    if (os_log_type_enabled(v63, v64))
    {
      v19 = v71;
      v38 = static UnsafeMutablePointer.allocate(capacity:)();
      v36 = sub_10025C9B0(&qword_1006D7290);
      v37 = 0;
      v39 = sub_1002641E8(0);
      v40 = sub_1002641E8(v37);
      v41 = &v88;
      v88 = v38;
      v42 = &v87;
      v87 = v39;
      v43 = &v86;
      v86 = v40;
      sub_10026423C(0, &v88);
      sub_10026423C(1, v41);
      v84 = v68;
      v85 = v57;
      sub_100264250(&v84, v41, v42, v43);
      v44 = v19;
      if (v19)
      {

        __break(1u);
      }

      else
      {
        v84 = v69;
        v85 = v58;
        sub_100264250(&v84, &v88, &v87, &v86);
        v35 = 0;
        v84 = v70;
        v85 = v60;
        sub_100264250(&v84, &v88, &v87, &v86);
        _os_log_impl(&_mh_execute_header, v63, v64, "Updating constraints for summary view because width changed: %f", v38, 0xCu);
        v34 = 0;
        sub_10026429C(v39);
        sub_10026429C(v40);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v63);
    (*(v73 + 8))(v76, v72);
  }

  v98 = sub_1002E67CC();
  v99 = v20;
  [v82 setSize:{v98, v20}];
  v31 = &v65[OBJC_IVAR___MFGeneratedSummaryViewCell_delegate];
  v32 = &v97;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v30 = Strong;
    v28 = Strong;
    v96 = Strong;
    _objc_retain(v65);
    v21 = [v65 itemID];
    v29 = v21;
    if (v21)
    {
      v27 = v29;
      v26 = v29;
      v95 = v29;
      _objc_release(v65);
      swift_getObjectType();
      [v82 size];
      v93 = v22;
      v94 = v23;
      [v28 summaryCell:v65 withItemID:v26 didLayoutWithHeight:v23];
      swift_unknownObjectRelease();
    }

    else
    {
      _objc_release(v65);
    }

    swift_unknownObjectRelease();
  }

  return v82;
}

double sub_1002E6770(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR___MFGeneratedSummaryViewCell_cachedWidth);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_1002E67CC()
{
  [v0 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v3 = v1;
  _objc_retain(v0);
  v4 = [v0 contentView];
  _objc_release(v0);
  [v4 isHidden];
  _objc_release(v4);
  return v3;
}

void sub_1002E6984(void *a1)
{
  _objc_retain(a1);
  v5 = [a1 itemID];
  if (v5)
  {
    _objc_release(a1);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    if (Strong)
    {
      sub_1002E67CC();
      v2 = v1;
      swift_getObjectType();
      [Strong summaryCell:a1 withItemID:v5 didLayoutWithHeight:v2];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    _objc_release(a1);
  }
}

uint64_t sub_1002E6AFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

Swift::Void __swiftcall GeneratedSummaryViewCell.willMove(toWindow:)(UIWindow_optional toWindow)
{
  if (!toWindow.value.super.super.super.isa)
  {
    v2 = (v3 + OBJC_IVAR___MFGeneratedSummaryViewCell_summaryViewManager);
    swift_beginAccess();
    if (*v2)
    {
      v1 = *v2;
      _objc_retain(*v2);
      swift_endAccess();
      [v1 resetToInitialStateIfLoading];
      _objc_release(v1);
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t GeneratedSummaryViewCell.presentingViewController(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    swift_getObjectType();
    v1 = [Strong presentingViewControllerForSummaryCell:v2];
    swift_unknownObjectRelease();
    return v1;
  }

  else
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("A delegate must be set on GeneratedSummaryViewCell", 0x32uLL, 1);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1002E6FC4(void *a1, uint64_t a2, void *a3)
{
  v7 = [v3 initWithViewModel:a1 delegate:? summaryView:?];
  _objc_release(a3);
  swift_unknownObjectRelease();
  _objc_release(a1);
  return v7;
}

uint64_t sub_1002E703C(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      type metadata accessor for DispatchWorkItemFlags();
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    type metadata accessor for DispatchWorkItemFlags();
    return v2;
  }

  return result;
}

void *sub_1002E7160(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t GroupedSearchItems.Section.Kind.init(category:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v82 = a1;
  v63 = sub_10025E604;
  v64 = sub_100264354;
  v65 = sub_10026434C;
  v66 = sub_10026434C;
  v67 = sub_1002644E4;
  v103 = 0;
  v102 = 0;
  v68 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v69 = 0;
  v70 = type metadata accessor for Logger();
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v74 = v19 - v73;
  v75 = type metadata accessor for GroupedSearchItems.Section.Kind();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v82);
  v79 = v19 - v78;
  v80 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v81 = v19 - v80;
  v103 = v19 - v80;
  v102 = v4;
  _objc_retain(v4);
  v83 = [objc_opt_self() mailboxCategory];
  v84 = [v82 isGroupedInCategory:?];
  _objc_release(v83);
  if (v84)
  {
    v85 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.mailboxes(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
LABEL_29:
    (*(v76 + 16))(v62, v81, v75);
    (*(v76 + 56))(v62, 0, 1, v75);
    _objc_release(v82);
    return (*(v76 + 8))(v81, v75);
  }

  _objc_release(v82);
  _objc_retain(v82);
  v60 = [objc_opt_self() otherCategory];
  v61 = [v82 isGroupedInCategory:?];
  _objc_release(v60);
  if (v61)
  {
    v86 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.others(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  _objc_release(v82);
  _objc_retain(v82);
  v58 = [objc_opt_self() cannedCategory];
  v59 = [v82 isGroupedInCategory:?];
  _objc_release(v58);
  if (v59)
  {
    v87 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.cannedSearches(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  _objc_release(v82);
  _objc_retain(v82);
  v56 = [objc_opt_self() instantAnswersCategory];
  v57 = [v82 isGroupedInCategory:?];
  _objc_release(v56);
  if (v57)
  {
    v88 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.instantAnswers(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  _objc_release(v82);
  _objc_retain(v82);
  v54 = [objc_opt_self() topHitsCategory];
  v55 = [v82 isGroupedInCategory:?];
  _objc_release(v54);
  if (v55)
  {
    v89 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.topHits(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  _objc_release(v82);
  _objc_retain(v82);
  v52 = [objc_opt_self() contactCategory];
  v53 = [v82 isGroupedInCategory:?];
  _objc_release(v52);
  if (v53)
  {
    v90 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.contacts(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  _objc_release(v82);
  _objc_retain(v82);
  v50 = [objc_opt_self() suggestedSearchCategory];
  v51 = [v82 isGroupedInCategory:?];
  _objc_release(v50);
  if (v51)
  {
    v91 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.suggestions(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  _objc_release(v82);
  _objc_retain(v82);
  v48 = [objc_opt_self() documentCategory];
  v49 = [v82 isGroupedInCategory:?];
  _objc_release(v48);
  if (v49)
  {
    v92 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.documents(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  _objc_release(v82);
  _objc_retain(v82);
  v46 = [objc_opt_self() locationCategory];
  v47 = [v82 isGroupedInCategory:?];
  _objc_release(v46);
  if (v47)
  {
    v93 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.locations(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  _objc_release(v82);
  _objc_retain(v82);
  v44 = [objc_opt_self() linkCategory];
  v45 = [v82 isGroupedInCategory:?];
  _objc_release(v44);
  if (v45)
  {
    v94 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.links(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  _objc_release(v82);
  _objc_retain(v82);
  v42 = [objc_opt_self() recentSearchCategory];
  v43 = [v82 isGroupedInCategory:?];
  _objc_release(v42);
  if (v43)
  {
    v95 = v82;
    (*(v76 + 104))(v79, enum case for GroupedSearchItems.Section.Kind.recentSearches(_:), v75);
    (*(v76 + 32))(v81, v79, v75);
    _objc_release(v82);
    goto LABEL_29;
  }

  v5 = v74;
  _objc_release(v82);
  v27 = sub_1004139EC();
  v28 = &v101;
  v30 = 32;
  swift_beginAccess();
  (*(v71 + 16))(v5, v27, v70);
  swift_endAccess();
  _objc_retain(v82);
  v31 = 7;
  v32 = swift_allocObject();
  *(v32 + 16) = v82;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  v29 = 17;
  v34 = swift_allocObject();
  *(v34 + 16) = 64;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v6 = swift_allocObject();
  v7 = v32;
  v33 = v6;
  *(v6 + 16) = v63;
  *(v6 + 24) = v7;
  v8 = swift_allocObject();
  v9 = v33;
  v37 = v8;
  *(v8 + 16) = v64;
  *(v8 + 24) = v9;
  v39 = sub_10025C9B0(&unk_1006D7720);
  v36 = _allocateUninitializedArray<A>(_:)();
  v38 = v10;

  v11 = v34;
  v12 = v38;
  *v38 = v65;
  v12[1] = v11;

  v13 = v35;
  v14 = v38;
  v38[2] = v66;
  v14[3] = v13;

  v15 = v37;
  v16 = v38;
  v38[4] = v67;
  v16[5] = v15;
  sub_1002612B0();

  if (os_log_type_enabled(v40, v41))
  {
    v17 = v68;
    v20 = static UnsafeMutablePointer.allocate(capacity:)();
    v19[3] = sub_10025C9B0(&qword_1006D7290);
    v21 = sub_1002641E8(1);
    v22 = sub_1002641E8(0);
    v23 = &v100;
    v100 = v20;
    v24 = &v99;
    v99 = v21;
    v25 = &v98;
    v98 = v22;
    sub_10026423C(2, &v100);
    sub_10026423C(1, v23);
    v96 = v65;
    v97 = v34;
    sub_100264250(&v96, v23, v24, v25);
    v26 = v17;
    if (v17)
    {

      __break(1u);
    }

    else
    {
      v96 = v66;
      v97 = v35;
      sub_100264250(&v96, &v100, &v99, &v98);
      v19[1] = 0;
      v96 = v67;
      v97 = v37;
      sub_100264250(&v96, &v100, &v99, &v98);
      _os_log_impl(&_mh_execute_header, v40, v41, "Unsupported section: %@.", v20, 0xCu);
      sub_10026429C(v21);
      sub_10026429C(v22);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v40);
  (*(v71 + 8))(v74, v70);
  _objc_release(v82);
  return (*(v76 + 56))(v62, 1, 1, v75);
}

uint64_t sub_1002E8818@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v6 = sub_10025C9B0(&qword_1006D8420);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3[1]);
  v7 = v3 - v4;
  sub_1002E88CC(v1, v3 - v4);
  State.wrappedValue.getter();
  return sub_1002E8970(v7);
}

uint64_t sub_1002E88CC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(sub_10025C9B0(&qword_1006D8420) + 28);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_1002E8970(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  (*(*(v1 - 8) + 8))(a1);
  sub_10025C9B0(&qword_1006D8420);

  return a1;
}

uint64_t sub_1002E89F4(uint64_t a1)
{
  v11 = a1;
  v10 = type metadata accessor for Date();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v3[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v6 = v3 - v3[0];
  v5 = sub_10025C9B0(&qword_1006D8420);
  v4 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3[1]);
  v7 = v3 - v4;
  sub_1002E88CC(v1, v3 - v4);
  (*(v8 + 16))(v6, v11, v10);
  State.wrappedValue.setter();
  sub_1002E8970(v7);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1002E8B6C@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v6 = sub_10025C9B0(&qword_1006D8420);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v3[1]);
  v7 = v3 - v4;
  sub_1002E88CC(v1, v3 - v4);
  State.projectedValue.getter();
  return sub_1002E8970(v7);
}

uint64_t sub_1002E8C40(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(sub_10025C9B0(&qword_1006D8420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v5);
  v4 = v3 - v3[0];
  sub_1002E88CC(v1, v3 - v3[0]);
  sub_1002E8CE4(v4, v3[1]);
  return sub_1002E8970(v5);
}

uint64_t sub_1002E8CE4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 40))(a2, a1);
  v3 = sub_10025C9B0(&qword_1006D8420);
  *(a2 + *(v3 + 28)) = *(a1 + *(v3 + 28));

  return a2;
}

uint64_t sub_1002E8D80@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_10025C9B0(&qword_1006D8420);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = &v4 - v5;
  v9 = &v4 - v5;
  v2 = type metadata accessor for IndexingSpeedView();
  sub_1002E88CC(v6 + *(v2 + 20), v1);
  State.wrappedValue.getter();
  return sub_1002E8970(v9);
}

uint64_t type metadata accessor for IndexingSpeedView()
{
  v1 = qword_1006D8538;
  if (!qword_1006D8538)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1002E8EB4(uint64_t a1)
{
  v15 = a1;
  v6 = 0;
  v14 = type metadata accessor for Date();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v5 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v10 = &v4 - v5;
  v9 = sub_10025C9B0(&qword_1006D8420);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v1 = &v4 - v7;
  v11 = &v4 - v7;
  v2 = type metadata accessor for IndexingSpeedView();
  sub_1002E88CC(v8 + *(v2 + 20), v1);
  (*(v12 + 16))(v10, v15, v14);
  State.wrappedValue.setter();
  sub_1002E8970(v11);
  return (*(v12 + 8))(v15, v14);
}

uint64_t sub_1002E9040@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = sub_10025C9B0(&qword_1006D8420);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v1 = &v4 - v5;
  v9 = &v4 - v5;
  v2 = type metadata accessor for IndexingSpeedView();
  sub_1002E88CC(v6 + *(v2 + 20), v1);
  State.projectedValue.getter();
  return sub_1002E8970(v9);
}

uint64_t sub_1002E9138(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(sub_10025C9B0(&qword_1006D8420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v7 = &v5 - v6;
  sub_1002E88CC(v2, &v5 - v6);
  v3 = type metadata accessor for IndexingSpeedView();
  sub_1002E8CE4(v7, v1 + *(v3 + 20));
  return sub_1002E8970(v8);
}

uint64_t sub_1002E91E8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for IndexingSpeedView() + 24);
  v2 = type metadata accessor for Date();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1002E9260(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = type metadata accessor for Date();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = type metadata accessor for IndexingSpeedView();
  (*(v8 + 40))(v1 + *(v2 + 24), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1002E9380@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for IndexingSpeedView() + 28);
  v2 = type metadata accessor for Date();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1002E93F8(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = type metadata accessor for Date();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = type metadata accessor for IndexingSpeedView();
  (*(v8 + 40))(v1 + *(v2 + 28), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1002E953C(uint64_t a1)
{
  v2 = type metadata accessor for IndexingSpeedView();
  result = a1;
  *(v1 + *(v2 + 32)) = a1;
  return result;
}

uint64_t sub_1002E9574()
{
  v2 = *(v0 + *(type metadata accessor for IndexingSpeedView() + 36));

  return v2;
}

uint64_t sub_1002E95AC(uint64_t a1)
{

  *(v1 + *(type metadata accessor for IndexingSpeedView() + 36)) = a1;
}

uint64_t sub_1002E95F8()
{
  type metadata accessor for IndexingSpeedView();

  sub_10025C9B0(&qword_1006D8428);
  sub_1002E9A18();
  return _ArrayProtocol.filter(_:)();
}

uint64_t sub_1002E96C4(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v22 = a2;
  v35 = 0;
  v34 = 0;
  v23 = sub_10025C9B0(&qword_1006D8420);
  v13 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v23);
  v2 = &v10 - v13;
  v24 = &v10 - v13;
  v14 = 0;
  v30 = type metadata accessor for Date();
  v26 = *(v30 - 8);
  v27 = v30 - 8;
  v16 = v26[8];
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v14);
  v28 = &v10 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v29 = &v10 - v17;
  v35 = v4;
  v34 = v5;
  v19 = type metadata accessor for IndexingSpeedView.IndexingData();
  v6 = *(v19 + 20);
  v20 = v26[2];
  v21 = v26 + 2;
  v20(v29, v18 + v6, v30);
  sub_1002E88CC(v22, v2);
  State.wrappedValue.getter();
  sub_1002E8970(v24);
  v25 = sub_1002F0AB4();
  v33 = static Comparable.>= infix(_:_:)();
  v32 = v26[1];
  v31 = v26 + 1;
  v32(v28, v30);
  v32(v29, v30);
  if (v33)
  {
    v7 = v24;
    v20(v29, v18 + *(v19 + 20), v30);
    v8 = type metadata accessor for IndexingSpeedView();
    sub_1002E88CC(v22 + *(v8 + 20), v7);
    State.wrappedValue.getter();
    sub_1002E8970(v24);
    v11 = static Comparable.<= infix(_:_:)();
    v32(v28, v30);
    v32(v29, v30);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1002E9A18()
{
  v2 = qword_1006D8430;
  if (!qword_1006D8430)
  {
    sub_10025CAA4(&qword_1006D8428);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8430);
    return WitnessTable;
  }

  return v2;
}

uint64_t InstantAnswerView.Model.Airport.code.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1002E9AEC()
{
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Indexed", 7uLL, 1)._countAndFlagsBits;
  static Color.green.getter();
  result = nullsub_13(countAndFlagsBits);
  qword_1006D83D8 = result;
  qword_1006D83E0 = v1;
  qword_1006D83E8 = v2;
  return result;
}

uint64_t *sub_1002E9B58()
{
  if (qword_1006D5EA0 != -1)
  {
    swift_once();
  }

  return &qword_1006D83D8;
}

uint64_t sub_1002E9BB8()
{
  v1 = *sub_1002E9B58();

  return v1;
}

uint64_t sub_1002E9C0C()
{
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Redonation Queue", 0x10uLL, 1)._countAndFlagsBits;
  static Color.yellow.getter();
  result = nullsub_13(countAndFlagsBits);
  qword_1006D83F0 = result;
  qword_1006D83F8 = v1;
  qword_1006D8400 = v2;
  return result;
}

uint64_t *sub_1002E9C78()
{
  if (qword_1006D5EA8 != -1)
  {
    swift_once();
  }

  return &qword_1006D83F0;
}

uint64_t sub_1002E9CD8()
{
  v1 = *sub_1002E9C78();

  return v1;
}

uint64_t sub_1002E9D2C()
{
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unindexed", 9uLL, 1)._countAndFlagsBits;
  static Color.red.getter();
  result = nullsub_13(countAndFlagsBits);
  qword_1006D8408 = result;
  qword_1006D8410 = v1;
  qword_1006D8418 = v2;
  return result;
}

uint64_t *sub_1002E9D98()
{
  if (qword_1006D5EB0 != -1)
  {
    swift_once();
  }

  return &qword_1006D8408;
}

uint64_t sub_1002E9DF8()
{
  v1 = *sub_1002E9D98();

  return v1;
}

uint64_t sub_1002E9EAC(uint64_t a1)
{
  v9 = a1;
  v8 = type metadata accessor for UUID();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t sub_1002E9FC0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for IndexingSpeedView.IndexingData() + 20);
  v2 = type metadata accessor for Date();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for IndexingSpeedView.IndexingData()
{
  v1 = qword_1006D85E8;
  if (!qword_1006D85E8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1002EA0AC(uint64_t a1)
{
  v11 = a1;
  v6 = 0;
  v10 = type metadata accessor for Date();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  v2 = type metadata accessor for IndexingSpeedView.IndexingData();
  (*(v8 + 40))(v1 + *(v2 + 20), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_1002EA1CC()
{
  v2 = *(v0 + *(type metadata accessor for IndexingSpeedView.IndexingData() + 24));

  return v2;
}

uint64_t sub_1002EA214(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for IndexingSpeedView.IndexingData() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1002EA2A0(uint64_t a1, char a2)
{
  v3 = type metadata accessor for IndexingSpeedView.IndexingData();
  result = a1;
  v5 = v2 + *(v3 + 28);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

int *sub_1002EA308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 32))(a7, a1);
  v20 = type metadata accessor for IndexingSpeedView.IndexingData();
  v13 = v20[5];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a7 + v13, a2);
  result = v20;
  v10 = (a7 + v20[6]);
  *v10 = a3;
  v10[1] = a4;
  v11 = a7 + v20[7];
  *v11 = a5;
  *(v11 + 8) = a6 & 1;
  return result;
}

uint64_t sub_1002EA434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v53 = a1;
  v52 = a2;
  v57 = 0;
  v61 = sub_1002EAE10;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v3 = sub_10025C9B0(&qword_1006D8420);
  v32 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v33 = v20 - v32;
  v4 = sub_10025C9B0(&qword_1006D8438);
  v34 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v35 = v20 - v34;
  v36 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v37 = v20 - v36;
  v7 = sub_10025C9B0(&qword_1006D8740);
  v38 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v39 = v20 - v38;
  v40 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20 - v38);
  v41 = v20 - v40;
  v42 = 0;
  v43 = type metadata accessor for Date();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v42);
  v47 = v20 - v46;
  v48 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v49 = v20 - v48;
  v50 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v51 = v20 - v50;
  v55 = type metadata accessor for IndexingSpeedView();
  v54 = (*(*(v55 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v53);
  v56 = v20 - v54;
  v68 = v20 - v54;
  v67 = v13;
  v66 = v14;
  *(v56 + v55[8]) = v14;
  v65 = v13;
  v58 = sub_10025C9B0(&qword_1006D8440);
  v59 = sub_10025C9B0(&qword_1006D8428);
  v60 = sub_1002EB56C();
  sub_1002EB5F4();
  v62 = Sequence.flatMap<A>(_:)();
  v27 = v62;
  v26 = v55[9];

  v15 = v27;
  *(v56 + v26) = v27;
  v64 = v15;
  sub_1002EB67C();
  Collection.first.getter();
  v28 = type metadata accessor for IndexingSpeedView.IndexingData();
  v16 = *(v28 - 8);
  v29 = *(v16 + 48);
  v30 = v16 + 48;
  if (v29(v37, 1) == 1)
  {
    sub_1002EB704(v37);
    (*(v44 + 56))(v41, 1, 1, v43);
  }

  else
  {
    (*(v44 + 16))(v41, v37 + *(v28 + 20), v43);
    sub_1002EBCCC(v37);
    (*(v44 + 56))(v41, 0, 1, v43);
  }

  v24 = *(v44 + 48);
  v25 = v44 + 48;
  if (v24(v41, 1, v43) == 1)
  {
    Date.init()();
    if (v24(v41, 1, v43) != 1)
    {
      sub_1002A70C0(v41);
    }
  }

  else
  {
    (*(v44 + 32))(v51, v41, v43);
  }

  v17 = v56 + v55[6];
  v22 = *(v44 + 32);
  v23 = v44 + 32;
  v22(v17, v51, v43);
  v63 = v27;
  sub_1002EB814();
  BidirectionalCollection.last.getter();

  if ((v29)(v35, 1, v28) == 1)
  {
    sub_1002EB704(v35);
    (*(v44 + 56))(v39, 1, 1, v43);
  }

  else
  {
    (*(v44 + 16))(v39, v35 + *(v28 + 20), v43);
    sub_1002EBCCC(v35);
    (*(v44 + 56))(v39, 0, 1, v43);
  }

  if (v24(v39, 1, v43) == 1)
  {
    Date.init()();
    if (v24(v39, 1, v43) != 1)
    {
      sub_1002A70C0(v39);
    }
  }

  else
  {
    v22(v49, v39, v43);
  }

  v22(v56 + v55[7], v49, v43);
  v18 = v56 + v55[6];
  v21 = *(v44 + 16);
  v20[1] = v44 + 16;
  v21(v47, v18, v43);
  sub_1002EB89C(v43, v33);
  sub_1002EB91C(v33, v56);
  v21(v47, v56 + v55[7], v43);
  sub_1002EB89C(v43, v33);
  sub_1002EB91C(v33, v56 + v55[5]);
  sub_1002EB9AC(v56, v31);

  return sub_1002EBB84(v56);
}

_BYTE *sub_1002EAE10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v32 = a1;
  v72 = 0;
  v33 = 0;
  v31 = (*(*(type metadata accessor for UUID() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v42 = &v11 - v31;
  v34 = (*(*(type metadata accessor for Date() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v33);
  v51 = &v11 - v34;
  v58 = *v2;
  v72 = v58;
  v47 = type metadata accessor for IndexingSpeedView.IndexingData();
  v35 = _allocateUninitializedArray<A>(_:)();
  v41 = v3;
  v48 = &selRef_countForLayout;
  v46 = [v58 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = sub_1002E9C78();
  v43 = *v4;
  v44 = v4[1];

  v57 = &selRef__accountsOrderDidChange_;
  v36 = [v58 messagesToRedonate];
  v59 = &selRef_includeReadLaterAction;
  v37 = [v36 integerValue];
  _objc_release(v36);
  v40 = v71;
  v71[0] = v37;
  v55 = &selRef_mailAlertControllerForHandoffError_acknowledgmentObserver_;
  v38 = [v58 messagesIndexed];
  v39 = [v38 v59[501]];
  _objc_release(v38);
  v70 = v39;
  min<A>(_:_:)();
  v45 = v71[1];
  sub_1002EA2F0();
  sub_1002EA308(v42, v51, v43, v44, v45, 0, v41);
  _objc_release(v46);
  v49 = *(*(v47 - 8) + 72);
  v50 = v49;
  v52 = [v58 v48[84]];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_1002E9B58();
  v53 = *v5;
  v54 = v5[1];

  v68 = 0;
  v56 = [v58 v55[330]];
  v62 = [v56 v59[501]];
  _objc_release(v56);
  v60 = [v58 v57[154]];
  v61 = [v60 v59[501]];
  _objc_release(v60);
  result = v62;
  v63 = v62 - v61;
  if (__OFSUB__(v62, v61))
  {
    __break(1u);
  }

  else
  {
    v67 = v63;
    max<A>(_:_:)();
    v19 = v69;
    sub_1002EA2F0();
    sub_1002EA308(v42, v51, v53, v54, v19, 0, v41 + v50);
    _objc_release(v52);
    v20 = v41 + 2 * v49;
    v21 = [v58 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_1002E9D98();
    v22 = *v8;
    v23 = v8[1];

    v65 = 0;
    v24 = [v58 indexableMessages];
    v25 = &selRef_includeReadLaterAction;
    v28 = [v24 integerValue];
    _objc_release(v24);
    v26 = [v58 messagesIndexed];
    v27 = [v26 v25[501]];
    _objc_release(v26);
    result = v28;
    v29 = v28 - v27;
    if (!__OFSUB__(v28, v27))
    {
      v64 = v29;
      max<A>(_:_:)();
      v12 = v66;
      sub_1002EA2F0();
      sub_1002EA308(v42, v51, v22, v23, v12, 0, v20);
      _objc_release(v21);
      v14 = v41 + 3 * v49;
      v18 = [v58 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = sub_1002E9B58();
      v15 = *v10;
      v16 = v10[1];

      v13 = [v58 messagesIndexed];
      v17 = [v13 integerValue];
      _objc_release(v13);
      sub_1002EA2F0();
      sub_1002EA308(v42, v51, v15, v16, v17, 1, v14);
      _objc_release(v18);
      result = v35;
      sub_1002612B0();
      *v30 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002EB56C()
{
  v2 = qword_1006D8448;
  if (!qword_1006D8448)
  {
    sub_10025CAA4(&qword_1006D8440);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002EB5F4()
{
  v2 = qword_1006D8450;
  if (!qword_1006D8450)
  {
    sub_10025CAA4(&qword_1006D8428);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002EB67C()
{
  v2 = qword_1006D8458;
  if (!qword_1006D8458)
  {
    sub_10025CAA4(&qword_1006D8428);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8458);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002EB704(uint64_t a1)
{
  v6 = type metadata accessor for IndexingSpeedView.IndexingData();
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v1 = type metadata accessor for UUID();
    (*(*(v1 - 8) + 8))(a1);
    v4 = a1 + *(v6 + 20);
    v2 = type metadata accessor for Date();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

unint64_t sub_1002EB814()
{
  v2 = qword_1006D8460;
  if (!qword_1006D8460)
  {
    sub_10025CAA4(&qword_1006D8428);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8460);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002EB91C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = sub_10025C9B0(&qword_1006D8420);
  result = a2;
  *(a2 + *(v3 + 28)) = *(a1 + *(v3 + 28));
  return result;
}

uint64_t sub_1002EB9AC(uint64_t a1, uint64_t a2)
{
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 16);
  (v11)(a2, a1);
  v6 = sub_10025C9B0(&qword_1006D8420);
  v3 = *(v6 + 28);
  v4 = *(a1 + v3);

  *(a2 + v3) = v4;
  v12 = type metadata accessor for IndexingSpeedView();
  v8 = a2 + v12[5];
  v5 = a1 + v12[5];
  v11();
  v7 = *(v6 + 28);
  v9 = *(v5 + v7);

  *(v8 + v7) = v9;
  (v11)(a2 + v12[6], a1 + v12[6], v10);
  (v11)(a2 + v12[7], a1 + v12[7], v10);
  *(a2 + v12[8]) = *(a1 + v12[8]);
  v15 = v12[9];
  v16 = *(a1 + v15);

  result = a2;
  *(a2 + v15) = v16;
  return result;
}

uint64_t sub_1002EBB84(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 8);
  (v3)(a1);
  sub_10025C9B0(&qword_1006D8420);

  v4 = type metadata accessor for IndexingSpeedView();
  v3();

  (v3)(a1 + *(v4 + 24), v2);
  (v3)(a1 + *(v4 + 28), v2);

  return a1;
}

uint64_t sub_1002EBCCC(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(type metadata accessor for IndexingSpeedView.IndexingData() + 20);
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(a1 + v4);

  return a1;
}

uint64_t sub_1002EBD9C()
{
  v3 = *(v0 + *(type metadata accessor for IndexingSpeedView() + 32));
  if (!v3)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Local Index", 0xBuLL, 1)._countAndFlagsBits;
  }

  if (v3 == 1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Remote Index", 0xCuLL, 1)._countAndFlagsBits;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

uint64_t sub_1002EBE80@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v8 = sub_1002EC854;
  v25 = 0;
  v24 = 0;
  v14 = sub_10025C9B0(&qword_1006D8468);
  v4 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14);
  v16 = &v3 - v4;
  v18 = sub_10025C9B0(&qword_1006D8470);
  v6 = *(*(v18 - 8) + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v18);
  v20 = &v3 - v5;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v3 - v5);
  v21 = &v3 - v7;
  v25 = &v3 - v7;
  v24 = v1;
  v9 = &v22;
  v23 = v1;
  v10 = sub_10025C9B0(&qword_1006D8478);
  v11 = sub_1002EF01C();
  sub_1002EEFF8();
  v12 = 0;
  v13 = 1;
  VStack.init(alignment:spacing:content:)();
  v15 = sub_1002EF0C8();
  sub_1002EF0A4();
  View.padding(_:_:)();
  sub_10002B7D0(v16);
  v19 = sub_1002EF194();
  sub_1002EC85C(v20, v18, v21);
  sub_10002B7D0(v20);
  sub_10002B96C(v21, v20);
  sub_1002EC85C(v20, v18, v17);
  sub_10002B7D0(v20);
  return sub_10002B7D0(v21);
}

uint64_t sub_1002EC0C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v59 = a1;
  v39 = 0;
  v38 = sub_1002EC8C0;
  v58 = &opaque type descriptor for <<opaque return type of View.chartForegroundStyleScale<A, B>(_:)>>;
  v61 = sub_1002F0734;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v83 = v105;
  memset(v105, 0, sizeof(v105));
  v68 = sub_10025C9B0(&qword_1006D8660);
  v22 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68);
  v75 = &v22 - v22;
  v23 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v22 - v22);
  v78 = &v22 - v23;
  v108 = &v22 - v23;
  v52 = sub_10025C9B0(&qword_1006D8668);
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v24 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v51 = &v22 - v24;
  v79 = sub_10025C9B0(&qword_1006D84A0);
  v65 = *(v79 - 8);
  v66 = v79 - 8;
  v25 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v79);
  v76 = &v22 - v25;
  v26 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v22 - v25);
  v82 = &v22 - v26;
  v107 = &v22 - v26;
  v106 = a1;
  v5 = sub_1002EBD9C();
  v27 = v104;
  v104[0] = v5;
  v104[1] = v6;
  sub_1002686CC();
  v53 = &type metadata for String;
  v100 = Text.init<A>(_:)();
  v101 = v7;
  v102 = v8;
  v103 = v9;
  v29 = v100;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v28 = static Font.headline.getter();
  v96 = v29;
  v97 = v30;
  v60 = 1;
  v98 = v31 & 1;
  v99 = v32;
  v92 = Text.font(_:)();
  v93 = v10;
  v94 = v11;
  v95 = v12;
  v33 = v92;
  v34 = v10;
  v35 = v11;
  v36 = v12;

  sub_1002EF150(v29, v30, v31 & 1);

  v37 = v89;
  v89[0] = v33;
  v89[1] = v34;
  v90 = v35 & 1 & v60;
  v91 = v36;
  v67 = &type metadata for Text;
  v69 = &protocol witness table for Text;
  sub_1002EC85C(v89, &type metadata for Text, v83);
  sub_1002F03C0(v37);
  v13 = sub_1002E95F8();
  v44 = &v88;
  v88 = v13;
  v40 = sub_10025C9B0(&qword_1006D8428);
  v41 = sub_10025C9B0(&qword_1006D8670);
  v42 = sub_1002F0408();
  v43 = sub_1002F0490();
  sub_1002F05F4();
  Chart.init<A, B>(_:content:)();
  v46 = sub_10025C9B0(&qword_1006D8690);
  v73 = 3;
  v47 = _allocateUninitializedArray<A>(_:)();
  v45 = v14;
  v15 = sub_1002E9B58();
  sub_100268860(v15, v45);
  v16 = sub_1002E9B58();
  sub_1002F0674(v16 + 2, v45 + 2);
  v17 = sub_1002E9D98();
  sub_100268860(v17, v45 + 3);
  v18 = sub_1002E9D98();
  sub_1002F0674(v18 + 2, v45 + 5);
  v19 = sub_1002E9C78();
  sub_100268860(v19, v45 + 6);
  v20 = sub_1002E9C78();
  sub_1002F0674(v20 + 2, v45 + 8);
  sub_1002612B0();
  v54 = &type metadata for Color;
  v48 = KeyValuePairs.init(dictionaryLiteral:)();
  v55 = sub_1002F06AC();
  v56 = &protocol witness table for String;
  v57 = &protocol witness table for Color;
  View.chartForegroundStyleScale<A, B>(_:)();

  (*(v49 + 8))(v51, v52);
  v87[3] = v52;
  v87[4] = v53;
  v87[5] = v54;
  v87[6] = v55;
  v87[7] = v56;
  v87[8] = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1002EC85C(v76, v79, v82);
  v81 = *(v65 + 8);
  v80 = v65 + 8;
  v81(v76, v79);
  v64 = static HorizontalAlignment.leading.getter();
  v62 = v84;
  v84[2] = v59;
  v63 = sub_10025C9B0(&qword_1006D86A0);
  sub_1002F073C();
  VStack.init(alignment:spacing:content:)();
  v71 = sub_1002F07C4();
  sub_1002EC85C(v75, v68, v78);
  sub_1002F084C(v75);
  v77 = v86;
  sub_1002F0920(v83, v86);
  v74 = v87;
  v87[0] = v77;
  (*(v65 + 16))(v76, v82, v79);
  v87[1] = v76;
  sub_1002F09A8(v78, v75);
  v87[2] = v75;
  v85[0] = v67;
  v85[1] = v79;
  v85[2] = v68;
  v84[4] = v69;
  v84[5] = OpaqueTypeConformance2;
  v84[6] = v71;
  sub_1003A33CC(v74, v73, v85, v72);
  sub_1002F084C(v75);
  v81(v76, v79);
  sub_1002F03C0(v77);
  sub_1002F084C(v78);
  v81(v82, v79);
  return sub_1002F03C0(v83);
}

uint64_t sub_1002EC8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v128 = a1;
  v75 = &opaque type descriptor for <<opaque return type of ChartContent.foregroundStyle<A>(by:)>>;
  v76 = &opaque type descriptor for <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v146 = 0;
  v141 = 0;
  v135 = 0;
  v121 = 0;
  v77 = (*(*(type metadata accessor for Color.RGBColorSpace() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v78 = v25 - v77;
  v79 = type metadata accessor for PointMark();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v79);
  v83 = v25 - v82;
  v84 = sub_10025C9B0(&qword_1006D86E8);
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = (v85[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v84);
  v88 = v25 - v87;
  v89 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v87);
  v90 = v25 - v89;
  v91 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v89);
  v92 = v25 - v91;
  v156 = v25 - v91;
  v93 = sub_10025C9B0(&qword_1006D86F0);
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v93);
  v97 = v25 - v96;
  v98 = (*(*(sub_10025C9B0(&qword_1006D86F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v121);
  v99 = v25 - v98;
  v100 = type metadata accessor for Date();
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v100);
  v104 = v25 - v103;
  v105 = (*(*(sub_10025C9B0(&qword_1006D8700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v121);
  v106 = v25 - v105;
  v107 = type metadata accessor for AreaMark();
  v108 = *(v107 - 8);
  v109 = v107 - 8;
  v110 = (*(v108 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v107);
  v111 = v25 - v110;
  v112 = sub_10025C9B0(&qword_1006D8708);
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (v113[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v112);
  v116 = v25 - v115;
  v117 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v115);
  v118 = v25 - v117;
  v119 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25 - v117);
  v120 = v25 - v119;
  v155 = v25 - v119;
  v122 = sub_10025C9B0(&qword_1006D8670);
  v124 = *(*(v122 - 8) + 64);
  v123 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v121);
  v125 = v25 - v123;
  v126 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v127 = v25 - v126;
  v154 = v25 - v126;
  v153 = v7;
  v129 = type metadata accessor for IndexingSpeedView.IndexingData();
  v8 = (v128 + v129[7]);
  v130 = *v8;
  if (v8[1])
  {
    v72 = v130;
    v32 = v130;
    v152 = v130;
    v31 = 1;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Date", 4uLL, 1);
    v28 = LocalizedStringKey.init(stringLiteral:)();
    v29 = v18;
    v27 = v19;
    v30 = v20;
    (*(v101 + 16))(v104, v128 + v129[5], v100);
    v36 = &protocol witness table for Date;
    static PlottableValue.value(_:_:)();
    (*(v101 + 8))(v104, v100);

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Messages", 8uLL, v31 & 1);
    LocalizedStringKey.init(stringLiteral:)();
    v33 = v21;
    v34 = v22;
    v151[1] = v32;
    v35 = &type metadata for Int;
    v37 = &protocol witness table for Int;
    static PlottableValue.value(_:_:)();

    PointMark.init<A, B>(x:y:)();
    sub_1002EDDC8(v78);
    sub_1002D9B08();
    v23 = Color.init(_:red:green:blue:opacity:)();
    v38 = v151;
    v151[0] = v23;
    v39 = &type metadata for Color;
    v40 = &protocol witness table for PointMark;
    v41 = &protocol witness table for Color;
    ChartContent.foregroundStyle<A>(_:)();
    sub_100268928();
    (*(v80 + 8))(v83, v79);
    v147 = v79;
    v148 = v39;
    v149 = v40;
    v150 = v41;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1002EC85C(v90, v84, v92);
    v43 = v85[1];
    v44 = v85 + 1;
    v43(v90, v84);
    v146 = v90;
    v26 = v85[2];
    v25[1] = v85 + 2;
    v26(v88, v92, v84);
    sub_1002EC85C(v88, v84, v90);
    v43(v88, v84);
    v26(v88, v90, v84);
    v142 = v107;
    v143 = &type metadata for String;
    v144 = &protocol witness table for AreaMark;
    v145 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    sub_1002EDE34(v88, v112, v84, v125);
    v43(v88, v84);
    sub_10002C2AC(v125, v127);
    v43(v90, v84);
    v43(v92, v84);
  }

  else
  {
    v73 = v130;
    v51 = v130;
    v141 = v130;
    v57 = 4;
    v58 = 1;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Date", 4uLL, 1);
    v48 = LocalizedStringKey.init(stringLiteral:)();
    v49 = v9;
    v47 = v10;
    v50 = v11;
    (*(v101 + 16))(v104, v128 + v129[5], v100);
    v55 = &protocol witness table for Date;
    static PlottableValue.value(_:_:)();
    (*(v101 + 8))(v104, v100);

    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Messages", 8uLL, v58 & 1);
    LocalizedStringKey.init(stringLiteral:)();
    v52 = v12;
    v53 = v13;
    v140[2] = v51;
    v54 = &type metadata for Int;
    v56 = &protocol witness table for Int;
    static PlottableValue.value(_:_:)();

    sub_1002EDCC8();
    AreaMark.init<A, B>(x:y:stacking:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Type", v57, v58 & 1);
    v59 = LocalizedStringKey.init(stringLiteral:)();
    v64 = v14;
    v62 = v15;
    v65 = v16;
    v17 = (v128 + v129[6]);
    v60 = *v17;
    v61 = v17[1];

    v63 = v140;
    v140[0] = v60;
    v140[1] = v61;
    v66 = &type metadata for String;
    v68 = &protocol witness table for String;
    static PlottableValue.value(_:_:)();
    sub_100268744();

    v67 = &protocol witness table for AreaMark;
    ChartContent.foregroundStyle<A>(by:)();
    (*(v94 + 8))(v97, v93);
    (*(v108 + 8))(v111, v107);
    v136 = v107;
    v137 = v66;
    v138 = v67;
    v139 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    sub_1002EC85C(v118, v112, v120);
    v70 = v113[1];
    v71 = v113 + 1;
    v70(v118, v112);
    v135 = v118;
    v46 = v113[2];
    v45 = v113 + 2;
    v46(v116, v120, v112);
    sub_1002EC85C(v116, v112, v118);
    v70(v116, v112);
    v46(v116, v118, v112);
    v131 = v79;
    v132 = &type metadata for Color;
    v133 = &protocol witness table for PointMark;
    v134 = &protocol witness table for Color;
    swift_getOpaqueTypeConformance2();
    sub_1002EDCE0(v116, v112, v84, v125);
    v70(v116, v112);
    sub_10002C2AC(v125, v127);
    v70(v118, v112);
    v70(v120, v112);
  }

  sub_10002C3BC(v127, v125);
  sub_1002F0490();
  sub_1002EC85C(v125, v122, v74);
  sub_10002C4CC(v125);
  return sub_10002C4CC(v127);
}

uint64_t sub_1002EDCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a4;
  v6[1] = a1;
  v11 = a2;
  v12 = a3;
  v14 = a2;
  v13 = a3;
  v8 = type metadata accessor for BuilderConditional.Storage();
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v10 = v6 - v7;
  (*(*(v4 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t sub_1002EDDC8@<X0>(uint64_t a1@<X8>)
{
  v3 = enum case for Color.RGBColorSpace.sRGB(_:);
  v1 = type metadata accessor for Color.RGBColorSpace();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t sub_1002EDE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a4;
  v6[1] = a1;
  v11 = a2;
  v12 = a3;
  v14 = a2;
  v13 = a3;
  v8 = type metadata accessor for BuilderConditional.Storage();
  v7 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v10 = v6 - v7;
  (*(*(v4 - 8) + 16))();
  swift_storeEnumTagMultiPayload();
  return BuilderConditional.init(storage:)();
}

uint64_t sub_1002EDF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v119 = a1;
  v65 = "Fatal error";
  v66 = "Range requires lowerBound <= upperBound";
  v67 = "Swift/ClosedRange.swift";
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v113 = 0;
  v68 = type metadata accessor for DatePickerComponents();
  v69 = *(v68 - 8);
  v70 = v68 - 8;
  v71 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v68);
  v72 = &v37 - v71;
  v73 = sub_10025C9B0(&qword_1006D86B8);
  v74 = (*(*(v73 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v113);
  v75 = &v37 - v74;
  v76 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v77 = &v37 - v76;
  v123 = type metadata accessor for Date();
  v114 = *(v123 - 8);
  v115 = v123 - 8;
  v78 = (v114[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v123);
  v79 = &v37 - v78;
  v80 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v37 - v78);
  v81 = &v37 - v80;
  v82 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v37 - v80);
  v122 = &v37 - v82;
  v83 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v37 - v82);
  v124 = &v37 - v83;
  v84 = sub_10025C9B0(&qword_1006D86C0);
  v85 = (*(*(v84 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v84);
  v86 = &v37 - v85;
  v87 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7);
  v88 = &v37 - v87;
  v120 = sub_10025C9B0(&qword_1006D8420);
  v89 = (*(*(v120 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v120);
  v9 = &v37 - v89;
  v121 = &v37 - v89;
  v10 = sub_10025C9B0(&qword_1006D86C8);
  v90 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v91 = &v37 - v90;
  v92 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v37 - v90);
  v112 = &v37 - v92;
  v93 = sub_10025C9B0(&qword_1006D84B0);
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (v94[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v119);
  v97 = &v37 - v96;
  v98 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v12);
  v99 = &v37 - v98;
  v100 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = __chkstk_darwin(v14);
  v101 = &v37 - v100;
  v102 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = __chkstk_darwin(v16);
  v103 = &v37 - v102;
  v132 = &v37 - v102;
  v104 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = __chkstk_darwin(v18);
  v105 = &v37 - v104;
  v106 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = __chkstk_darwin(v20);
  v107 = &v37 - v106;
  v131 = &v37 - v106;
  v130 = v22;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("From", 4uLL, 1);
  v108 = LocalizedStringKey.init(stringLiteral:)();
  v109 = v23;
  v110 = v24;
  v111 = v25;
  sub_1002E88CC(v119, v9);
  State.projectedValue.getter();
  v26 = v121;
  sub_1002E8970(v121);
  v118 = type metadata accessor for IndexingSpeedView();
  v27 = v118[6];
  v116 = v114[2];
  v117 = v114 + 2;
  v116(v124, v119 + v27, v123);
  sub_1002E88CC(v119 + v118[5], v26);
  State.wrappedValue.getter();
  sub_1002E8970(v121);
  v125 = sub_1002F0AB4();
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v116(v77, v124, v123);
  v116(&v77[*(v73 + 48)], v122, v123);
  sub_1002F0B34(v77, v75);
  v45 = v75 + *(v73 + 48);
  v47 = v114[4];
  v46 = v114 + 4;
  v47(v88);
  v49 = v114[1];
  v48 = v114 + 1;
  v49(v45, v123);
  sub_1002F0BE8(v77, v75);
  (v47)(&v88[*(v84 + 36)], v75 + *(v73 + 48), v123);
  v49(v75, v123);
  v49(v122, v123);
  v49(v124, v123);
  v58 = 2;
  v52 = _allocateUninitializedArray<A>(_:)();
  v50 = v28;
  static DatePickerComponents.date.getter();
  v51 = *(v69 + 72);
  static DatePickerComponents.hourAndMinute.getter();
  v29 = v52;
  sub_1002612B0();
  v53 = v29;
  v54 = sub_1002F0C9C();
  SetAlgebra<>.init(arrayLiteral:)();
  v30 = v121;
  v59 = 1;
  DatePicker<>.init(_:selection:in:displayedComponents:)();
  v55 = sub_1002F0D1C();
  sub_1002EC85C(v105, v93, v107);
  v56 = v94[1];
  v57 = v94 + 1;
  v56(v105, v93);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("To", v58, v59 & 1);
  v60 = LocalizedStringKey.init(stringLiteral:)();
  v61 = v31;
  v62 = v32;
  v63 = v33;
  sub_1002E88CC(v119 + v118[5], v30);
  State.projectedValue.getter();
  v34 = v121;
  sub_1002E8970(v121);
  sub_1002E88CC(v119, v34);
  State.wrappedValue.getter();
  sub_1002E8970(v121);
  v116(v79, v119 + v118[7], v123);
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v116(v77, v81, v123);
  v116(&v77[*(v73 + 48)], v79, v123);
  sub_1002F0B34(v77, v75);
  v38 = v75 + *(v73 + 48);
  v47(v86);
  v49(v38, v123);
  sub_1002F0BE8(v77, v75);
  (v47)(&v86[*(v84 + 36)], v75 + *(v73 + 48), v123);
  v49(v75, v123);
  v49(v79, v123);
  v49(v81, v123);
  v43 = 2;
  v40 = _allocateUninitializedArray<A>(_:)();
  v39 = v35;
  static DatePickerComponents.date.getter();
  static DatePickerComponents.hourAndMinute.getter();
  sub_1002612B0();
  SetAlgebra<>.init(arrayLiteral:)();
  DatePicker<>.init(_:selection:in:displayedComponents:)();
  sub_1002EC85C(v101, v93, v103);
  v56(v101, v93);
  v42 = v94[2];
  v41 = v94 + 2;
  v42(v99, v107, v93);
  v44 = v129;
  v129[0] = v99;
  v42(v97, v103, v93);
  v129[1] = v97;
  v128[0] = v93;
  v128[1] = v93;
  v126 = v55;
  v127 = v55;
  sub_1003A33CC(v44, v43, v128, v64);
  v56(v97, v93);
  v56(v99, v93);
  v56(v103, v93);
  return (v56)(v107, v93);
}

unint64_t sub_1002EF01C()
{
  v2 = qword_1006D8480;
  if (!qword_1006D8480)
  {
    sub_10025CAA4(&qword_1006D8478);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D8480);
    return WitnessTable;
  }

  return v2;
}