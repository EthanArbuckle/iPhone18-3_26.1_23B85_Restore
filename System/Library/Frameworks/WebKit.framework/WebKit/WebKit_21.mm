uint64_t IPC::ArgumentCoder<WebKit::EditorState,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = a2 + 32;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 8));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 9));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 10));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 11));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 12));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 13));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 14));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 15));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 16));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 17));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 18));
  IPC::ArgumentCoder<std::optional<WebKit::EditorState::PostLayoutData>,void>::encode<IPC::Encoder,std::optional<WebKit::EditorState::PostLayoutData> const&>(a1, v4);

  return IPC::ArgumentCoder<std::optional<WebKit::EditorState::VisualData>,void>::encode<IPC::Encoder,std::optional<WebKit::EditorState::VisualData> const&>(a1, a2 + 272);
}

WTF *IPC::ArgumentCoder<WebKit::EditorState,void>::decode@<X0>(IPC::Decoder *this@<X0>, uint64_t a2@<X8>)
{
  v642 = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  v5 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *this;
  v7 = v5 - *this;
  v8 = v4 >= v7;
  v9 = v4 - v7;
  if (v8 && v9 > 7)
  {
    *(this + 2) = v5 + 1;
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_325;
      }

      v11 = *v5;
      if (*v5 == -1)
      {
        goto LABEL_325;
      }

      v12 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    result = *(this + 3);
    if (result)
    {
      goto LABEL_818;
    }

    v4 = 0;
  }

  while (1)
  {
    *this = 0;
    *(this + 1) = 0;
    v190 = *(this + 3);
    if (!v190)
    {
      v4 = 0;
LABEL_324:
      v6 = 0;
      goto LABEL_325;
    }

    if (!v4)
    {
      goto LABEL_324;
    }

    result = (*(*v190 + 16))(v190);
    if (*this)
    {
      goto LABEL_817;
    }

    v6 = 0;
    v4 = *(this + 1);
LABEL_325:
    *this = 0;
    *(this + 1) = 0;
    v191 = *(this + 3);
    if (v191)
    {
      if (v4)
      {
        (*(*v191 + 16))(v191, v6);
        v11 = 0;
        v12 = 0;
        v6 = *this;
        v4 = *(this + 1);
LABEL_10:
        v13 = *(this + 2);
        if (v4 > &v13[-v6])
        {
          v14 = v13 + 1;
          *(this + 2) = v13 + 1;
          if (v13)
          {
            v15 = *v13;
            if (v15 < 2)
            {
              v16 = 1;
              goto LABEL_14;
            }

            goto LABEL_333;
          }

          goto LABEL_330;
        }
      }

      else
      {
        v6 = 0;
        v12 = 0;
        v11 = 0;
      }
    }

    else
    {
      v6 = 0;
      v12 = 0;
      v11 = 0;
      v4 = 0;
    }

    *this = 0;
    *(this + 1) = 0;
    v192 = *(this + 3);
    if (v192)
    {
      if (v4)
      {
        (*(*v192 + 16))(v192, v6);
        v6 = *this;
        v4 = *(this + 1);
        goto LABEL_330;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_330:
    *this = 0;
    *(this + 1) = 0;
    v193 = *(this + 3);
    if (!v193)
    {
      v4 = 0;
LABEL_332:
      v6 = 0;
      v15 = 0;
      goto LABEL_333;
    }

    if (!v4)
    {
      goto LABEL_332;
    }

    (*(*v193 + 16))(v193, v6);
    v15 = 0;
    v6 = *this;
    v4 = *(this + 1);
LABEL_333:
    *this = 0;
    *(this + 1) = 0;
    v194 = *(this + 3);
    if (!v194 || !v4)
    {
      v17 = 0;
      v16 = 0;
      v195 = 0;
      v6 = 0;
LABEL_335:
      *this = 0;
      *(this + 1) = 0;
      v196 = *(this + 3);
      if (v196 && v195)
      {
        (*(*v196 + 16))(v196, v6, v195);
        v19 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v19 = 0;
      }

      goto LABEL_337;
    }

    (*(*v194 + 16))(v194, v6);
    v16 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v14 = *(this + 2);
LABEL_14:
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v4 <= &v14[-v6])
    {
      v195 = 0;
      v433 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v433 && v4)
      {
        (*(*v433 + 16))(v433);
        v6 = *this;
        v195 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_335;
    }

    v18 = v14 + 1;
    *(this + 2) = v14 + 1;
    if (!v14)
    {
      v195 = v4;
      goto LABEL_335;
    }

    v19 = *v14;
    if (v19 < 2)
    {
      v20 = 1;
      goto LABEL_21;
    }

LABEL_337:
    *this = 0;
    *(this + 1) = 0;
    v197 = *(this + 3);
    if (!v197 || !v4)
    {
      v517 = 0;
      v20 = 0;
      v198 = 0;
      v6 = 0;
LABEL_339:
      *this = 0;
      *(this + 1) = 0;
      v199 = *(this + 3);
      if (v199 && v198)
      {
        (*(*v199 + 16))(v199, v6, v198);
        v23 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v23 = 0;
      }

      goto LABEL_341;
    }

    (*(*v197 + 16))(v197, v6);
    v20 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v18 = *(this + 2);
LABEL_21:
    if (v19)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v517 = v21;
    if (v4 <= &v18[-v6])
    {
      v427 = v12;
      v428 = v20;
      v429 = v17;
      v430 = v427;
      v198 = 0;
      v431 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v431 && v4)
      {
        (*(*v431 + 16))(v431);
        v6 = *this;
        v198 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      v432 = v430;
      v17 = v429;
      v20 = v428;
      v12 = v432;
      goto LABEL_339;
    }

    v22 = v18 + 1;
    *(this + 2) = v18 + 1;
    if (!v18)
    {
      v198 = v4;
      goto LABEL_339;
    }

    v23 = *v18;
    if (v23 < 2)
    {
      v24 = 1;
      goto LABEL_28;
    }

LABEL_341:
    *this = 0;
    *(this + 1) = 0;
    v200 = *(this + 3);
    if (!v200 || !v4)
    {
      v515 = 0;
      v516 = 0;
      v201 = 0;
      v6 = 0;
LABEL_343:
      *this = 0;
      *(this + 1) = 0;
      v202 = *(this + 3);
      if (v202 && v201)
      {
        (*(*v202 + 16))(v202, v6, v201);
        v26 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v26 = 0;
      }

      goto LABEL_345;
    }

    (*(*v200 + 16))(v200, v6);
    v24 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v22 = *(this + 2);
LABEL_28:
    v516 = v24;
    if (!v23)
    {
      v24 = 0;
    }

    v515 = v24;
    if (v4 <= &v22[-v6])
    {
      v421 = v12;
      v422 = v20;
      v423 = v17;
      v424 = v421;
      v201 = 0;
      v425 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v425 && v4)
      {
        (*(*v425 + 16))(v425);
        v6 = *this;
        v201 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      v426 = v424;
      v17 = v423;
      v20 = v422;
      v12 = v426;
      goto LABEL_343;
    }

    v25 = v22 + 1;
    *(this + 2) = v22 + 1;
    if (!v22)
    {
      v201 = v4;
      goto LABEL_343;
    }

    v26 = *v22;
    if (v26 < 2)
    {
      v27 = 1;
      goto LABEL_34;
    }

LABEL_345:
    *this = 0;
    *(this + 1) = 0;
    v203 = *(this + 3);
    if (!v203 || !v4)
    {
      v513 = 0;
      v204 = 0;
      v205 = 0;
      v6 = 0;
LABEL_347:
      *this = 0;
      *(this + 1) = 0;
      v206 = *(this + 3);
      v514 = v204;
      if (v206 && v205)
      {
        (*(*v206 + 16))(v206, v6, v205);
        v29 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v29 = 0;
      }

      goto LABEL_349;
    }

    (*(*v203 + 16))(v203, v6);
    v27 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v25 = *(this + 2);
LABEL_34:
    v514 = v27;
    if (!v26)
    {
      v27 = 0;
    }

    v513 = v27;
    if (v4 <= &v25[-v6])
    {
      v415 = v12;
      v416 = v20;
      v417 = v17;
      v418 = v415;
      v205 = 0;
      v419 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v419 && v4)
      {
        (*(*v419 + 16))(v419);
        v6 = *this;
        v205 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      v420 = v418;
      v17 = v417;
      v20 = v416;
      v12 = v420;
      goto LABEL_717;
    }

    v28 = v25 + 1;
    *(this + 2) = v25 + 1;
    if (!v25)
    {
      v205 = v4;
LABEL_717:
      v204 = v514;
      goto LABEL_347;
    }

    v29 = *v25;
    if (v29 < 2)
    {
      v30 = 1;
      goto LABEL_40;
    }

LABEL_349:
    *this = 0;
    *(this + 1) = 0;
    v207 = *(this + 3);
    if (!v207 || !v4)
    {
      v511 = 0;
      v512 = 0;
      v208 = 0;
      v6 = 0;
LABEL_351:
      *this = 0;
      *(this + 1) = 0;
      v209 = *(this + 3);
      if (v209 && v208)
      {
        (*(*v209 + 16))(v209, v6, v208);
        v32 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v32 = 0;
      }

      goto LABEL_353;
    }

    (*(*v207 + 16))(v207, v6);
    v30 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v28 = *(this + 2);
LABEL_40:
    v512 = v30;
    if (!v29)
    {
      v30 = 0;
    }

    v511 = v30;
    if (v4 <= &v28[-v6])
    {
      v409 = v12;
      v410 = v20;
      v411 = v17;
      v412 = v409;
      v208 = 0;
      v413 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v413 && v4)
      {
        (*(*v413 + 16))(v413);
        v6 = *this;
        v208 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      v414 = v412;
      v17 = v411;
      v20 = v410;
      v12 = v414;
      goto LABEL_351;
    }

    v31 = v28 + 1;
    *(this + 2) = v28 + 1;
    if (!v28)
    {
      v208 = v4;
      goto LABEL_351;
    }

    v32 = *v28;
    if (v32 < 2)
    {
      v33 = 1;
      goto LABEL_46;
    }

LABEL_353:
    *this = 0;
    *(this + 1) = 0;
    v210 = *(this + 3);
    if (!v210 || !v4)
    {
      v509 = 0;
      v211 = 0;
      v212 = 0;
      v6 = 0;
LABEL_355:
      *this = 0;
      *(this + 1) = 0;
      v213 = *(this + 3);
      v510 = v211;
      if (v213 && v212)
      {
        (*(*v213 + 16))(v213, v6, v212);
        v35 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v35 = 0;
      }

      goto LABEL_357;
    }

    (*(*v210 + 16))(v210, v6);
    v33 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v31 = *(this + 2);
LABEL_46:
    v510 = v33;
    if (!v32)
    {
      v33 = 0;
    }

    v509 = v33;
    if (v4 <= &v31[-v6])
    {
      v403 = v12;
      v404 = v20;
      v405 = v17;
      v406 = v403;
      v212 = 0;
      v407 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v407 && v4)
      {
        (*(*v407 + 16))(v407);
        v6 = *this;
        v212 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      v408 = v406;
      v17 = v405;
      v20 = v404;
      v12 = v408;
      goto LABEL_706;
    }

    v34 = v31 + 1;
    *(this + 2) = v31 + 1;
    if (!v31)
    {
      v212 = v4;
LABEL_706:
      v211 = v510;
      goto LABEL_355;
    }

    v35 = *v31;
    if (v35 < 2)
    {
      v36 = 1;
      goto LABEL_52;
    }

LABEL_357:
    *this = 0;
    *(this + 1) = 0;
    v214 = *(this + 3);
    if (!v214 || !v4)
    {
      v507 = 0;
      v508 = 0;
      v215 = 0;
      v6 = 0;
LABEL_359:
      *this = 0;
      *(this + 1) = 0;
      v216 = *(this + 3);
      if (v216 && v215)
      {
        (*(*v216 + 16))(v216, v6, v215);
        v38 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v38 = 0;
      }

      goto LABEL_361;
    }

    (*(*v214 + 16))(v214, v6);
    v36 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v34 = *(this + 2);
LABEL_52:
    v508 = v36;
    if (!v35)
    {
      v36 = 0;
    }

    v507 = v36;
    if (v4 <= &v34[-v6])
    {
      v397 = v12;
      v398 = v20;
      v399 = v17;
      v400 = v397;
      v215 = 0;
      v401 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v401 && v4)
      {
        (*(*v401 + 16))(v401);
        v6 = *this;
        v215 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      v402 = v400;
      v17 = v399;
      v20 = v398;
      v12 = v402;
      goto LABEL_359;
    }

    v37 = v34 + 1;
    *(this + 2) = v34 + 1;
    if (!v34)
    {
      v215 = v4;
      goto LABEL_359;
    }

    v38 = *v34;
    if (v38 < 2)
    {
      v39 = 1;
      goto LABEL_58;
    }

LABEL_361:
    *this = 0;
    *(this + 1) = 0;
    v217 = *(this + 3);
    if (!v217 || !v4)
    {
      v505 = 0;
      v218 = 0;
      v219 = 0;
      v6 = 0;
LABEL_363:
      *this = 0;
      *(this + 1) = 0;
      v220 = *(this + 3);
      v506 = v218;
      if (v220 && v219)
      {
        (*(*v220 + 16))(v220, v6, v219);
        v41 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v41 = 0;
      }

      goto LABEL_365;
    }

    (*(*v217 + 16))(v217, v6);
    v39 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v37 = *(this + 2);
LABEL_58:
    v506 = v39;
    if (!v38)
    {
      v39 = 0;
    }

    v505 = v39;
    if (v4 <= &v37[-v6])
    {
      v391 = v12;
      v392 = v20;
      v393 = v17;
      v394 = v391;
      v219 = 0;
      v395 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v395 && v4)
      {
        (*(*v395 + 16))(v395);
        v6 = *this;
        v219 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      v396 = v394;
      v17 = v393;
      v20 = v392;
      v12 = v396;
      goto LABEL_695;
    }

    v40 = v37 + 1;
    *(this + 2) = v37 + 1;
    if (!v37)
    {
      v219 = v4;
LABEL_695:
      v218 = v506;
      goto LABEL_363;
    }

    v41 = *v37;
    if (v41 < 2)
    {
      v42 = 1;
      goto LABEL_64;
    }

LABEL_365:
    *this = 0;
    *(this + 1) = 0;
    v221 = *(this + 3);
    if (!v221 || !v4)
    {
      v503 = 0;
      v504 = 0;
      v222 = 0;
      v6 = 0;
LABEL_367:
      *this = 0;
      *(this + 1) = 0;
      v223 = *(this + 3);
      if (v223 && v222)
      {
        (*(*v223 + 16))(v223, v6, v222);
        v44 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v44 = 0;
      }

      goto LABEL_369;
    }

    (*(*v221 + 16))(v221, v6);
    v42 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v40 = *(this + 2);
LABEL_64:
    v504 = v42;
    if (!v41)
    {
      v42 = 0;
    }

    v503 = v42;
    if (v4 <= &v40[-v6])
    {
      v385 = v12;
      v386 = v20;
      v387 = v17;
      v388 = v385;
      v222 = 0;
      v389 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v389 && v4)
      {
        (*(*v389 + 16))(v389);
        v6 = *this;
        v222 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      v390 = v388;
      v17 = v387;
      v20 = v386;
      v12 = v390;
      goto LABEL_367;
    }

    v43 = v40 + 1;
    *(this + 2) = v40 + 1;
    if (!v40)
    {
      v222 = v4;
      goto LABEL_367;
    }

    v44 = *v40;
    if (v44 < 2)
    {
      v45 = 1;
      goto LABEL_70;
    }

LABEL_369:
    *this = 0;
    *(this + 1) = 0;
    v224 = *(this + 3);
    if (!v224 || !v4)
    {
      v501 = 0;
      v225 = 0;
      v226 = 0;
      v6 = 0;
LABEL_371:
      *this = 0;
      *(this + 1) = 0;
      v227 = *(this + 3);
      v502 = v225;
      if (v227 && v226)
      {
        (*(*v227 + 16))(v227, v6, v226);
        v46 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
        v46 = 0;
      }

      goto LABEL_373;
    }

    (*(*v224 + 16))(v224, v6);
    v45 = 0;
    v6 = *this;
    v4 = *(this + 1);
    v43 = *(this + 2);
LABEL_70:
    v502 = v45;
    if (!v44)
    {
      v45 = 0;
    }

    v501 = v45;
    if (v4 <= &v43[-v6])
    {
      v379 = v12;
      v380 = v20;
      v381 = v17;
      v382 = v379;
      v226 = 0;
      v383 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v383 && v4)
      {
        (*(*v383 + 16))(v383);
        v6 = *this;
        v226 = *(this + 1);
      }

      else
      {
        v6 = 0;
      }

      v384 = v382;
      v17 = v381;
      v20 = v380;
      v12 = v384;
      goto LABEL_684;
    }

    *(this + 2) = v43 + 1;
    if (!v43)
    {
      v226 = v4;
LABEL_684:
      v225 = v502;
      goto LABEL_371;
    }

    v46 = *v43;
    if (v46 < 2)
    {
      v47 = 1;
      goto LABEL_76;
    }

LABEL_373:
    *this = 0;
    *(this + 1) = 0;
    v228 = *(this + 3);
    if (!v228 || !v4)
    {
      v6 = 0;
      v48 = 0;
      v229 = 0;
      v4 = 0;
      goto LABEL_375;
    }

    (*(*v228 + 16))(v228, v6);
    v47 = 0;
    v6 = *this;
    v4 = *(this + 1);
LABEL_76:
    v500 = v47;
    if (v46)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    v49 = *(this + 2);
    if (v4 <= &v49[-v6])
    {
      v229 = v500;
LABEL_375:
      *this = 0;
      *(this + 1) = 0;
      v230 = *(this + 3);
      if (v230)
      {
        v264 = v48;
        v265 = v229;
        if (v4)
        {
          (*(*v230 + 16))(v230, v6);
          v6 = *this;
          v4 = *(this + 1);
        }

        else
        {
          v6 = 0;
        }

        v229 = v265;
        v48 = v264;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      goto LABEL_377;
    }

    v50 = v49 + 1;
    *(this + 2) = v49 + 1;
    if (!v49)
    {
      v229 = v500;
LABEL_377:
      *this = 0;
      *(this + 1) = 0;
      v231 = *(this + 3);
      if (v231)
      {
        v262 = v48;
        v263 = v229;
        if (v4)
        {
          (*(*v231 + 16))(v231, v6);
          v6 = *this;
          v4 = *(this + 1);
        }

        else
        {
          v6 = 0;
        }

        v229 = v263;
        v48 = v262;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

LABEL_379:
      v500 = v229;
      *this = 0;
      *(this + 1) = 0;
      v232 = *(this + 3);
      if (v232 && v4)
      {
        (*(*v232 + 16))(v232, v6);
      }

LABEL_380:
      v612[0] = 0;
      v620 = 0;
      goto LABEL_381;
    }

    if (*v49 >= 2u)
    {
      v229 = v500;
      goto LABEL_379;
    }

    if (!*v49)
    {
      LOBYTE(v550) = 0;
      v569 = 0;
      std::__optional_move_base<WebKit::EditorState::PostLayoutData,false>::__optional_move_base[abi:sn200100](v612, &v550);
      v620 = 1;
      if (v569 != 1)
      {
        goto LABEL_381;
      }

LABEL_262:
      if ((v563 & 0x8000000000000) != 0)
      {
        v143 = (v563 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v563 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v143);
          WTF::fastFree(v143, v138);
        }
      }

      v139 = v560;
      if (v560)
      {
        v560 = 0;
        LODWORD(v561) = 0;
        WTF::fastFree(v139, v138);
      }

      v140 = v557;
      v557 = 0;
      if (v140 && atomic_fetch_add_explicit(v140, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v140, v138);
      }

      v141 = v556;
      v556 = 0;
      if (v141 && atomic_fetch_add_explicit(v141, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v141, v138);
      }

      if ((v554 & 0x8000000000000) != 0)
      {
        v142 = (v554 & 0xFFFFFFFFFFFFLL);
        if (atomic_fetch_add((v554 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v142);
          WTF::fastFree(v142, v138);
        }
      }

      goto LABEL_381;
    }

    v498 = v48;
    if (v4 <= &v50[-v6])
    {
      v303 = v12;
      v304 = v20;
      v305 = v17;
      v306 = v303;
      v307 = 0;
      v308 = 0;
      *this = 0;
      *(this + 1) = 0;
      v309 = *(this + 3);
      if (v309)
      {
        (*(*v309 + 16))(v309);
        v308 = *this;
        v307 = *(this + 1);
      }

      goto LABEL_598;
    }

    *(this + 2) = v49 + 2;
    if (v49 == -1)
    {
      v435 = v12;
      v304 = v20;
      v305 = v17;
      v306 = v435;
      v307 = v4;
      v308 = v6;
LABEL_598:
      *this = 0;
      *(this + 1) = 0;
      v310 = *(this + 3);
      if (v310 && v307)
      {
        (*(*v310 + 16))(v310, v308, v307);
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v311 = v306;
      v17 = v305;
      v20 = v304;
      v12 = v311;
      goto LABEL_601;
    }

    v51 = *v50;
    if (v51 < 0x10)
    {
      v52 = v51 | 0x100;
      goto LABEL_87;
    }

LABEL_601:
    *this = 0;
    *(this + 1) = 0;
    v312 = *(this + 3);
    if (v312)
    {
      v313 = v12;
      v314 = v20;
      v315 = v17;
      v316 = v313;
      if (v4)
      {
        (*(*v312 + 16))(v312, v6);
        v52 = 0;
        v6 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v6 = 0;
        v52 = 0;
      }

      v317 = v316;
      v17 = v315;
      v20 = v314;
      v12 = v317;
    }

    else
    {
      v4 = 0;
      v6 = 0;
      v52 = 0;
    }

LABEL_87:
    v53 = ((*(this + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v4 < v53 - v6 || v4 - (v53 - v6) <= 7)
    {
      v292 = v12;
      v293 = v20;
      v294 = v17;
      v295 = v292;
      *this = 0;
      *(this + 1) = 0;
      v296 = *(this + 3);
      if (!v296)
      {
        v4 = 0;
LABEL_576:
        v6 = 0;
        goto LABEL_577;
      }

      if (!v4)
      {
        goto LABEL_576;
      }

      (*(*v296 + 16))(v296);
      v6 = *this;
      v4 = *(this + 1);
    }

    else
    {
      v54 = (v53 + 1);
      *(this + 2) = v53 + 1;
      if (v53)
      {
        v55 = *v53;
        v497 = 1;
        goto LABEL_91;
      }

      v436 = v12;
      v293 = v20;
      v294 = v17;
      v295 = v436;
    }

LABEL_577:
    *this = 0;
    *(this + 1) = 0;
    v297 = *(this + 3);
    if (v297)
    {
      if (v4)
      {
        (*(*v297 + 16))(v297, v6);
        v6 = *this;
        v4 = *(this + 1);
        goto LABEL_580;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_580:
    v497 = 0;
    v55 = 0;
    v54 = *(this + 2);
    v298 = v295;
    v17 = v294;
    v20 = v293;
    v12 = v298;
LABEL_91:
    if (v4 <= &v54[-v6])
    {
      v318 = v12;
      v319 = v20;
      v320 = v17;
      v321 = v318;
      *this = 0;
      *(this + 1) = 0;
      v322 = *(this + 3);
      if (v322)
      {
        if (v4)
        {
          (*(*v322 + 16))(v322);
          v6 = *this;
          v4 = *(this + 1);
LABEL_609:
          *this = 0;
          *(this + 1) = 0;
          v323 = *(this + 3);
          if (v323)
          {
            if (v4)
            {
              (*(*v323 + 16))(v323, v6);
              v6 = *this;
              v4 = *(this + 1);
              goto LABEL_612;
            }
          }

          else
          {
            v4 = 0;
          }

          v6 = 0;
LABEL_612:
          v324 = v321;
          v17 = v320;
          v20 = v319;
          v12 = v324;
          goto LABEL_613;
        }
      }

      else
      {
        v4 = 0;
      }

      v6 = 0;
      goto LABEL_609;
    }

    *(this + 2) = v54 + 1;
    if (!v54)
    {
      v437 = v12;
      v319 = v20;
      v320 = v17;
      v321 = v437;
      goto LABEL_609;
    }

    v56 = *v54;
    if (v56 < 5)
    {
      v496 = v56 | 0x100;
      goto LABEL_95;
    }

LABEL_613:
    *this = 0;
    *(this + 1) = 0;
    v325 = *(this + 3);
    if (v325)
    {
      v326 = v12;
      v327 = v20;
      v328 = v17;
      v329 = v326;
      if (v4)
      {
        (*(*v325 + 16))(v325, v6);
      }

      v496 = 0;
      v330 = v329;
      v17 = v328;
      v20 = v327;
      v12 = v330;
    }

    else
    {
      v496 = 0;
    }

LABEL_95:
    IPC::ArgumentCoder<WebCore::Color,void>::decode(this, &v524);
    v57 = *(this + 1);
    if ((BYTE8(v524) & 1) == 0)
    {
      v156 = v12;
      v157 = v20;
      v158 = v17;
      v159 = v156;
      v160 = *this;
      *this = 0;
      *(this + 1) = 0;
      v161 = *(this + 3);
      if (!v161 || !v57)
      {
        v162 = 0;
        v163 = 0;
        goto LABEL_290;
      }

      (*(*v161 + 16))(v161, v160);
      v57 = *(this + 1);
      v434 = v159;
      v17 = v158;
      v20 = v157;
      v12 = v434;
    }

    v58 = *this;
    v59 = *(this + 2);
    if (v57 <= &v59[-*this])
    {
      v438 = v12;
      v157 = v20;
      v158 = v17;
      v159 = v438;
      v162 = 0;
      v439 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      v163 = 0;
      if (v57 && v439)
      {
        (*(*v439 + 16))(v439);
        v163 = *this;
        v162 = *(this + 1);
      }

      goto LABEL_290;
    }

    *(this + 2) = v59 + 1;
    if (!v59)
    {
      v440 = v12;
      v157 = v20;
      v158 = v17;
      v159 = v440;
      v162 = v57;
      v163 = v58;
LABEL_290:
      *this = 0;
      *(this + 1) = 0;
      v164 = *(this + 3);
      if (v164 && v162)
      {
        (*(*v164 + 16))(v164, v163, v162);
        v58 = *this;
        v57 = *(this + 1);
      }

      else
      {
        v57 = 0;
        v58 = 0;
      }

      v165 = v159;
      v17 = v158;
      v20 = v157;
      v12 = v165;
      goto LABEL_293;
    }

    v60 = *v59;
    if (v60 < 3)
    {
      v494 = v60 | 0x100;
      goto LABEL_100;
    }

LABEL_293:
    *this = 0;
    *(this + 1) = 0;
    v166 = *(this + 3);
    if (v166)
    {
      v167 = v12;
      v168 = v20;
      v169 = v17;
      v170 = v167;
      if (v57)
      {
        (*(*v166 + 16))(v166, v58);
      }

      v494 = 0;
      v171 = v170;
      v17 = v169;
      v20 = v168;
      v12 = v171;
    }

    else
    {
      v494 = 0;
    }

LABEL_100:
    v61 = IPC::Decoder::decode<WebCore::WritingDirection>(this);
    v62 = *(this + 1);
    v63 = *(this + 2);
    v64 = *this;
    v493 = v61;
    if (v62 <= &v63[-*this])
    {
      v331 = v12;
      v332 = v20;
      v333 = v17;
      v334 = v331;
      *this = 0;
      *(this + 1) = 0;
      v335 = *(this + 3);
      if (v335)
      {
        if (v62)
        {
          (*(*v335 + 16))(v335);
          v64 = *this;
          v62 = *(this + 1);
          goto LABEL_621;
        }
      }

      else
      {
        v62 = 0;
      }

      v64 = 0;
    }

    else
    {
      v65 = v63 + 1;
      *(this + 2) = v63 + 1;
      if (v63)
      {
        v66 = *v63;
        if (v66 < 2)
        {
          v67 = 1;
          goto LABEL_104;
        }

        v353 = v12;
        v332 = v20;
        v333 = v17;
        v334 = v353;
        goto LABEL_646;
      }

      v441 = v12;
      v332 = v20;
      v333 = v17;
      v334 = v441;
    }

LABEL_621:
    *this = 0;
    *(this + 1) = 0;
    v336 = *(this + 3);
    if (!v336)
    {
      v62 = 0;
LABEL_623:
      v64 = 0;
      v66 = 0;
      goto LABEL_646;
    }

    if (!v62)
    {
      goto LABEL_623;
    }

    (*(*v336 + 16))(v336, v64);
    v66 = 0;
    v64 = *this;
    v62 = *(this + 1);
LABEL_646:
    *this = 0;
    *(this + 1) = 0;
    v354 = *(this + 3);
    if (!v354 || !v62)
    {
      v492 = 0;
      v355 = 0;
      v64 = 0;
LABEL_648:
      *this = 0;
      *(this + 1) = 0;
      v356 = *(this + 3);
      if (v356 && v355)
      {
        (*(*v356 + 16))(v356, v64, v355);
        v69 = 0;
        v64 = *this;
        v62 = *(this + 1);
      }

      else
      {
        v62 = 0;
        v64 = 0;
        v69 = 0;
      }

      goto LABEL_651;
    }

    (*(*v354 + 16))(v354, v64);
    v67 = 0;
    v64 = *this;
    v62 = *(this + 1);
    v65 = *(this + 2);
    v468 = v334;
    v17 = v333;
    v20 = v332;
    v12 = v468;
LABEL_104:
    if (v66)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }

    LOBYTE(v492) = v68;
    BYTE4(v492) = v67;
    if (v62 <= &v65[-v64])
    {
      v442 = v12;
      v332 = v20;
      v333 = v17;
      v334 = v442;
      v355 = 0;
      v443 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v62 && v443)
      {
        (*(*v443 + 16))(v443);
        v64 = *this;
        v355 = *(this + 1);
      }

      else
      {
        v64 = 0;
      }

      goto LABEL_648;
    }

    *(this + 2) = v65 + 1;
    if (!v65)
    {
      v444 = v12;
      v332 = v20;
      v333 = v17;
      v334 = v444;
      v355 = v62;
      goto LABEL_648;
    }

    v69 = *v65;
    if (v69 < 2)
    {
      v70 = 1;
      goto LABEL_111;
    }

    v357 = v12;
    v332 = v20;
    v333 = v17;
    v334 = v357;
LABEL_651:
    *this = 0;
    *(this + 1) = 0;
    v358 = *(this + 3);
    if (v358 && v62)
    {
      (*(*v358 + 16))(v358, v64);
    }

    v70 = 0;
    v359 = v334;
    v17 = v333;
    v20 = v332;
    v12 = v359;
LABEL_111:
    v491 = v70;
    v71 = v69 ? v70 : 0;
    IPC::Decoder::decode<WTF::String>(this, v521);
    IPC::Decoder::decode<WTF::String>(this, v518);
    v489 = IPC::Decoder::decode<char32_t>(this);
    v488 = IPC::Decoder::decode<char32_t>(this);
    v487 = IPC::Decoder::decode<char32_t>(this);
    IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(this, &v529);
    v72 = *(this + 1);
    v73 = *(this + 2);
    v74 = *this;
    v495 = v55;
    v490 = v71;
    if (v72 <= &v73[-*this])
    {
      v337 = v52;
      v338 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v338;
      *this = 0;
      *(this + 1) = 0;
      v342 = *(this + 3);
      if (v342)
      {
        if (v72)
        {
          (*(*v342 + 16))(v342);
          v74 = *this;
          v72 = *(this + 1);
          goto LABEL_627;
        }
      }

      else
      {
        v72 = 0;
      }

      v74 = 0;
    }

    else
    {
      v75 = v73 + 1;
      *(this + 2) = v73 + 1;
      if (v73)
      {
        v76 = *v73;
        if (v76 < 2)
        {
          v77 = 1;
          goto LABEL_118;
        }

        v337 = v52;
        v360 = v12;
        v339 = v20;
        v340 = v17;
        v341 = v360;
        goto LABEL_654;
      }

      v337 = v52;
      v445 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v445;
    }

LABEL_627:
    *this = 0;
    *(this + 1) = 0;
    v343 = *(this + 3);
    if (!v343)
    {
      v72 = 0;
LABEL_629:
      v74 = 0;
      v76 = 0;
      goto LABEL_654;
    }

    if (!v72)
    {
      goto LABEL_629;
    }

    (*(*v343 + 16))(v343, v74);
    v76 = 0;
    v74 = *this;
    v72 = *(this + 1);
LABEL_654:
    *this = 0;
    *(this + 1) = 0;
    v361 = *(this + 3);
    if (!v361 || !v72)
    {
      v486 = 0;
      v362 = 0;
      v74 = 0;
LABEL_656:
      *this = 0;
      *(this + 1) = 0;
      v363 = *(this + 3);
      if (v363 && v362)
      {
        (*(*v363 + 16))(v363, v74, v362);
        v80 = 0;
        v74 = *this;
        v72 = *(this + 1);
      }

      else
      {
        v72 = 0;
        v74 = 0;
        v80 = 0;
      }

      goto LABEL_659;
    }

    (*(*v361 + 16))(v361, v74);
    v74 = *this;
    v72 = *(this + 1);
    v75 = *(this + 2);
    v469 = v341;
    v17 = v340;
    v20 = v339;
    v12 = v469;
    v77 = 0;
    v52 = v337;
LABEL_118:
    BYTE4(v486) = v77;
    if (v76)
    {
      v78 = v77;
    }

    else
    {
      v78 = 0;
    }

    LOBYTE(v486) = v78;
    if (v72 <= &v75[-v74])
    {
      v337 = v52;
      v446 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v446;
      v362 = 0;
      v447 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v72 && v447)
      {
        (*(*v447 + 16))(v447);
        v74 = *this;
        v362 = *(this + 1);
      }

      else
      {
        v74 = 0;
      }

      goto LABEL_656;
    }

    v79 = v75 + 1;
    *(this + 2) = v75 + 1;
    if (!v75)
    {
      v337 = v52;
      v448 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v448;
      v362 = v72;
      goto LABEL_656;
    }

    v80 = *v75;
    if (v80 < 2)
    {
      v81 = 1;
      goto LABEL_125;
    }

    v337 = v52;
    v364 = v12;
    v339 = v20;
    v340 = v17;
    v341 = v364;
LABEL_659:
    *this = 0;
    *(this + 1) = 0;
    v365 = *(this + 3);
    if (!v365 || !v72)
    {
      v485 = 0;
      v366 = 0;
      v74 = 0;
LABEL_661:
      *this = 0;
      *(this + 1) = 0;
      v367 = *(this + 3);
      if (v367 && v366)
      {
        (*(*v367 + 16))(v367, v74, v366);
        v84 = 0;
        v74 = *this;
        v72 = *(this + 1);
      }

      else
      {
        v72 = 0;
        v74 = 0;
        v84 = 0;
      }

      goto LABEL_664;
    }

    (*(*v365 + 16))(v365, v74);
    v74 = *this;
    v72 = *(this + 1);
    v79 = *(this + 2);
    v467 = v341;
    v17 = v340;
    v20 = v339;
    v12 = v467;
    v81 = 0;
    v52 = v337;
LABEL_125:
    BYTE4(v485) = v81;
    if (v80)
    {
      v82 = v81;
    }

    else
    {
      v82 = 0;
    }

    LOBYTE(v485) = v82;
    if (v72 <= &v79[-v74])
    {
      v337 = v52;
      v449 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v449;
      v366 = 0;
      v450 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v72 && v450)
      {
        (*(*v450 + 16))(v450);
        v74 = *this;
        v366 = *(this + 1);
      }

      else
      {
        v74 = 0;
      }

      goto LABEL_661;
    }

    v83 = v79 + 1;
    *(this + 2) = v79 + 1;
    if (!v79)
    {
      v337 = v52;
      v451 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v451;
      v366 = v72;
      goto LABEL_661;
    }

    v84 = *v79;
    if (v84 < 2)
    {
      v85 = 1;
      goto LABEL_132;
    }

    v337 = v52;
    v368 = v12;
    v339 = v20;
    v340 = v17;
    v341 = v368;
LABEL_664:
    *this = 0;
    *(this + 1) = 0;
    v369 = *(this + 3);
    if (!v369 || !v72)
    {
      v484 = 0;
      v370 = 0;
      v74 = 0;
LABEL_666:
      *this = 0;
      *(this + 1) = 0;
      v371 = *(this + 3);
      if (v371 && v370)
      {
        (*(*v371 + 16))(v371, v74, v370);
        v88 = 0;
        v74 = *this;
        v72 = *(this + 1);
      }

      else
      {
        v72 = 0;
        v74 = 0;
        v88 = 0;
      }

      goto LABEL_668;
    }

    (*(*v369 + 16))(v369, v74);
    v74 = *this;
    v72 = *(this + 1);
    v83 = *(this + 2);
    v466 = v341;
    v17 = v340;
    v20 = v339;
    v12 = v466;
    v85 = 0;
    v52 = v337;
LABEL_132:
    BYTE4(v484) = v85;
    if (v84)
    {
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    LOBYTE(v484) = v86;
    if (v72 <= &v83[-v74])
    {
      v337 = v52;
      v452 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v452;
      v370 = 0;
      v453 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v72 && v453)
      {
        (*(*v453 + 16))(v453);
        v74 = *this;
        v370 = *(this + 1);
      }

      else
      {
        v74 = 0;
      }

      goto LABEL_666;
    }

    v87 = v83 + 1;
    *(this + 2) = v83 + 1;
    if (!v83)
    {
      v337 = v52;
      v454 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v454;
      v370 = v72;
      goto LABEL_666;
    }

    v88 = *v83;
    if (v88 < 2)
    {
      v89 = 1;
      goto LABEL_139;
    }

    v337 = v52;
    v377 = v12;
    v339 = v20;
    v340 = v17;
    v341 = v377;
LABEL_668:
    *this = 0;
    *(this + 1) = 0;
    v372 = *(this + 3);
    if (!v372 || !v72)
    {
      v483 = 0;
      v373 = 0;
      v74 = 0;
LABEL_670:
      *this = 0;
      *(this + 1) = 0;
      v374 = *(this + 3);
      if (v374 && v373)
      {
        (*(*v374 + 16))(v374, v74, v373);
        v91 = 0;
        v74 = *this;
        v72 = *(this + 1);
      }

      else
      {
        v72 = 0;
        v74 = 0;
        v91 = 0;
      }

      goto LABEL_672;
    }

    (*(*v372 + 16))(v372, v74);
    v89 = 0;
    v74 = *this;
    v72 = *(this + 1);
    v87 = *(this + 2);
    v465 = v341;
    v17 = v340;
    v20 = v339;
    v12 = v465;
    v52 = v337;
LABEL_139:
    if (v88)
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    LOBYTE(v483) = v90;
    BYTE4(v483) = v89;
    if (v72 <= &v87[-v74])
    {
      v337 = v52;
      v455 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v455;
      v373 = 0;
      v456 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v72 && v456)
      {
        (*(*v456 + 16))(v456);
        v74 = *this;
        v373 = *(this + 1);
      }

      else
      {
        v74 = 0;
      }

      goto LABEL_670;
    }

    *(this + 2) = v87 + 1;
    if (!v87)
    {
      v337 = v52;
      v457 = v12;
      v339 = v20;
      v340 = v17;
      v341 = v457;
      v373 = v72;
      goto LABEL_670;
    }

    v91 = *v87;
    if (v91 < 2)
    {
      v92 = 1;
      goto LABEL_146;
    }

    v337 = v52;
    v378 = v12;
    v339 = v20;
    v340 = v17;
    v341 = v378;
LABEL_672:
    *this = 0;
    *(this + 1) = 0;
    v375 = *(this + 3);
    if (v375 && v72)
    {
      (*(*v375 + 16))(v375, v74);
    }

    v92 = 0;
    v376 = v341;
    v17 = v340;
    v20 = v339;
    v12 = v376;
    v52 = v337;
LABEL_146:
    v482 = v92;
    if (v91)
    {
      v93 = v92;
    }

    else
    {
      v93 = 0;
    }

    IPC::ArgumentCoder<WebCore::Color,void>::decode(this, &v539);
    v94 = *(this + 1);
    v475 = v11;
    v476 = a2;
    v473 = v16;
    v474 = v12;
    v470 = v20;
    v472 = v17;
    v481 = v93;
    if ((v540 & 1) == 0)
    {
      v172 = *this;
      *this = 0;
      *(this + 1) = 0;
      v173 = *(this + 3);
      if (!v173 || !v94)
      {
        v174 = 0;
        v175 = 0;
LABEL_300:
        *this = 0;
        *(this + 1) = 0;
        v176 = *(this + 3);
        if (v176 && v174)
        {
          (*(*v176 + 16))(v176, v175, v174);
          v98 = 0;
          v95 = *this;
          v94 = *(this + 1);
        }

        else
        {
          v94 = 0;
          v95 = 0;
          v98 = 0;
        }

        goto LABEL_302;
      }

      (*(*v173 + 16))(v173, v172);
      v94 = *(this + 1);
    }

    v95 = *this;
    v96 = *(this + 2);
    if (v94 <= &v96[-*this])
    {
      v174 = 0;
      v458 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      v175 = 0;
      if (v94 && v458)
      {
        (*(*v458 + 16))(v458);
        v175 = *this;
        v174 = *(this + 1);
      }

      goto LABEL_300;
    }

    v97 = v96 + 1;
    *(this + 2) = v96 + 1;
    if (!v96)
    {
      v174 = v94;
      v175 = v95;
      goto LABEL_300;
    }

    v98 = *v96;
    if (v98 < 2)
    {
      v99 = 1;
      goto LABEL_154;
    }

LABEL_302:
    *this = 0;
    *(this + 1) = 0;
    v177 = *(this + 3);
    if (!v177 || !v94)
    {
      v480 = 0;
      v178 = 0;
      v95 = 0;
LABEL_304:
      *this = 0;
      *(this + 1) = 0;
      v179 = *(this + 3);
      if (v179 && v178)
      {
        (*(*v179 + 16))(v179, v95, v178);
        v101 = 0;
        v95 = *this;
        v94 = *(this + 1);
      }

      else
      {
        v94 = 0;
        v95 = 0;
        v101 = 0;
      }

      goto LABEL_306;
    }

    (*(*v177 + 16))(v177, v95);
    v99 = 0;
    v95 = *this;
    v94 = *(this + 1);
    v97 = *(this + 2);
LABEL_154:
    BYTE4(v480) = v99;
    if (!v98)
    {
      v99 = 0;
    }

    LOBYTE(v480) = v99;
    if (v94 <= &v97[-v95])
    {
      v178 = 0;
      v459 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v94 && v459)
      {
        (*(*v459 + 16))(v459);
        v95 = *this;
        v178 = *(this + 1);
      }

      else
      {
        v95 = 0;
      }

      goto LABEL_304;
    }

    v100 = v97 + 1;
    *(this + 2) = v97 + 1;
    if (!v97)
    {
      v178 = v94;
      goto LABEL_304;
    }

    v101 = *v97;
    if (v101 < 2)
    {
      v102 = 1;
      goto LABEL_160;
    }

LABEL_306:
    *this = 0;
    *(this + 1) = 0;
    v180 = *(this + 3);
    if (!v180 || !v94)
    {
      v479 = 0;
      v181 = 0;
      v95 = 0;
LABEL_308:
      *this = 0;
      *(this + 1) = 0;
      v182 = *(this + 3);
      if (v182 && v181)
      {
        (*(*v182 + 16))(v182, v95, v181);
        v104 = 0;
        v95 = *this;
        v94 = *(this + 1);
      }

      else
      {
        v94 = 0;
        v95 = 0;
        v104 = 0;
      }

      goto LABEL_310;
    }

    (*(*v180 + 16))(v180, v95);
    v102 = 0;
    v95 = *this;
    v94 = *(this + 1);
    v100 = *(this + 2);
LABEL_160:
    BYTE4(v479) = v102;
    if (!v101)
    {
      v102 = 0;
    }

    LOBYTE(v479) = v102;
    if (v94 <= &v100[-v95])
    {
      v181 = 0;
      v460 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v94 && v460)
      {
        (*(*v460 + 16))(v460);
        v95 = *this;
        v181 = *(this + 1);
      }

      else
      {
        v95 = 0;
      }

      goto LABEL_308;
    }

    v103 = v100 + 1;
    *(this + 2) = v100 + 1;
    if (!v100)
    {
      v181 = v94;
      goto LABEL_308;
    }

    v104 = *v100;
    if (v104 < 2)
    {
      v105 = 1;
      goto LABEL_166;
    }

LABEL_310:
    *this = 0;
    *(this + 1) = 0;
    v183 = *(this + 3);
    if (!v183 || !v94)
    {
      v478 = 0;
      v184 = 0;
      v95 = 0;
LABEL_312:
      *this = 0;
      *(this + 1) = 0;
      v185 = *(this + 3);
      if (v185 && v184)
      {
        (*(*v185 + 16))(v185, v95, v184);
        v107 = 0;
        v95 = *this;
        v94 = *(this + 1);
      }

      else
      {
        v94 = 0;
        v95 = 0;
        v107 = 0;
      }

      goto LABEL_314;
    }

    (*(*v183 + 16))(v183, v95);
    v105 = 0;
    v95 = *this;
    v94 = *(this + 1);
    v103 = *(this + 2);
LABEL_166:
    BYTE4(v478) = v105;
    if (!v104)
    {
      v105 = 0;
    }

    LOBYTE(v478) = v105;
    if (v94 <= &v103[-v95])
    {
      v184 = 0;
      v461 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v94 && v461)
      {
        (*(*v461 + 16))(v461);
        v95 = *this;
        v184 = *(this + 1);
      }

      else
      {
        v95 = 0;
      }

      goto LABEL_312;
    }

    v106 = v103 + 1;
    *(this + 2) = v103 + 1;
    if (!v103)
    {
      v184 = v94;
      goto LABEL_312;
    }

    v107 = *v103;
    if (v107 < 2)
    {
      v108 = 1;
      goto LABEL_172;
    }

LABEL_314:
    *this = 0;
    *(this + 1) = 0;
    v186 = *(this + 3);
    if (!v186 || !v94)
    {
      v477 = 0;
      v108 = 0;
      v187 = 0;
      v95 = 0;
LABEL_316:
      *this = 0;
      *(this + 1) = 0;
      v188 = *(this + 3);
      if (v188 && v187)
      {
        (*(*v188 + 16))(v188, v95, v187);
        v110 = 0;
        v95 = *this;
        v94 = *(this + 1);
      }

      else
      {
        v94 = 0;
        v95 = 0;
        v110 = 0;
      }

      goto LABEL_318;
    }

    (*(*v186 + 16))(v186, v95);
    v108 = 0;
    v95 = *this;
    v94 = *(this + 1);
    v106 = *(this + 2);
LABEL_172:
    if (v107)
    {
      v109 = v108;
    }

    else
    {
      v109 = 0;
    }

    v477 = v109;
    if (v94 <= &v106[-v95])
    {
      v187 = 0;
      v462 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v94 && v462)
      {
        (*(*v462 + 16))(v462);
        v95 = *this;
        v187 = *(this + 1);
      }

      else
      {
        v95 = 0;
      }

      goto LABEL_316;
    }

    *(this + 2) = v106 + 1;
    if (!v106)
    {
      v187 = v94;
      goto LABEL_316;
    }

    v110 = *v106;
    if (v110 < 2)
    {
      v111 = 1;
      goto LABEL_179;
    }

LABEL_318:
    *this = 0;
    *(this + 1) = 0;
    v189 = *(this + 3);
    if (v189 && v94)
    {
      (*(*v189 + 16))(v189, v95);
    }

    v111 = 0;
LABEL_179:
    v112 = v110 ? v111 : 0;
    result = IPC::Decoder::decode<std::optional<WebCore::ElementContext>>(&v621, this);
    v4 = *(this + 1);
    v114 = *(this + 2);
    v115 = *this;
    v116 = v52;
    if (v4 <= &v114[-*this])
    {
      *this = 0;
      *(this + 1) = 0;
      v344 = *(this + 3);
      if (v344)
      {
        if (v4)
        {
          (*(*v344 + 16))(v344);
          v4 = *(this + 1);
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v117 = v114 + 1;
      *(this + 2) = v114 + 1;
      if (v114)
      {
        v118 = *v114;
        if (v118 < 2)
        {
          v119 = 1;
          goto LABEL_186;
        }

        goto LABEL_635;
      }
    }

    *this = 0;
    *(this + 1) = 0;
    v345 = *(this + 3);
    if (!v345)
    {
      v4 = 0;
LABEL_634:
      v115 = 0;
      v118 = 0;
      goto LABEL_635;
    }

    if (!v4)
    {
      goto LABEL_634;
    }

    (*(*v345 + 16))(v345);
    v118 = 0;
    v115 = *this;
    v4 = *(this + 1);
LABEL_635:
    *this = 0;
    *(this + 1) = 0;
    v346 = *(this + 3);
    if (!v346 || !v4)
    {
      v120 = 0;
      v119 = 0;
      v347 = 0;
      v115 = 0;
LABEL_637:
      *this = 0;
      *(this + 1) = 0;
      v348 = *(this + 3);
      if (v348 && v347)
      {
        (*(*v348 + 16))(v348, v115, v347);
        v122 = 0;
        v115 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v115 = 0;
        v122 = 0;
      }

      goto LABEL_639;
    }

    result = (*(*v346 + 16))(v346, v115);
    v119 = 0;
    v115 = *this;
    v4 = *(this + 1);
    v117 = *(this + 2);
LABEL_186:
    if (v118)
    {
      v120 = v119;
    }

    else
    {
      v120 = 0;
    }

    if (v4 <= v117 - v115)
    {
      v347 = 0;
      v463 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v4 && v463)
      {
        (*(*v463 + 16))(v463);
        v115 = *this;
        v347 = *(this + 1);
      }

      else
      {
        v115 = 0;
      }

      goto LABEL_637;
    }

    v121 = v117 + 1;
    *(this + 2) = v117 + 1;
    if (!v117)
    {
      v347 = v4;
      goto LABEL_637;
    }

    v122 = *v117;
    if (v122 < 2)
    {
      v123 = 1;
      goto LABEL_193;
    }

LABEL_639:
    *this = 0;
    *(this + 1) = 0;
    v349 = *(this + 3);
    if (!v349 || !v4)
    {
      a2 = 0;
      LOBYTE(v123) = 0;
      v350 = 0;
      v115 = 0;
LABEL_641:
      *this = 0;
      *(this + 1) = 0;
      v351 = *(this + 3);
      if (v351 && v350)
      {
        (*(*v351 + 16))(v351, v115, v350);
        v124 = 0;
        v115 = *this;
        v4 = *(this + 1);
      }

      else
      {
        v4 = 0;
        v115 = 0;
        v124 = 0;
      }

LABEL_643:
      *this = 0;
      *(this + 1) = 0;
      v352 = *(this + 3);
      if (!v352 || !v4)
      {
        goto LABEL_644;
      }

      result = (*(*v352 + 16))(v352, v115);
      v125 = 0;
      v115 = *this;
      goto LABEL_200;
    }

    result = (*(*v349 + 16))(v349, v115);
    v123 = 0;
    v115 = *this;
    v4 = *(this + 1);
    v121 = *(this + 2);
LABEL_193:
    if (v122)
    {
      a2 = v123;
    }

    else
    {
      a2 = 0;
    }

    if (v4 <= v121 - v115)
    {
      v350 = 0;
      v464 = *(this + 3);
      *this = 0;
      *(this + 1) = 0;
      if (v4 && v464)
      {
        (*(*v464 + 16))(v464);
        v115 = *this;
        v350 = *(this + 1);
      }

      else
      {
        v115 = 0;
      }

      goto LABEL_641;
    }

    *(this + 2) = v121 + 1;
    if (!v121)
    {
      v350 = v4;
      goto LABEL_641;
    }

    v124 = *v121;
    if (v124 >= 2)
    {
      goto LABEL_643;
    }

    v125 = 1;
LABEL_200:
    if (v124)
    {
      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    if (!v115)
    {
LABEL_644:
      LOBYTE(v550) = 0;
      v569 = 0;
      v11 = v475;
      a2 = v476;
      v16 = v473;
      v12 = v474;
      v20 = v470;
      v17 = v472;
      v48 = v498;
      goto LABEL_243;
    }

    if (v116 <= 0xFF)
    {
      goto LABEL_817;
    }

    LOBYTE(v579) = v116;
    if ((v497 & 1) == 0)
    {
      goto LABEL_817;
    }

    *(&v579 + 1) = v495;
    if (v496 <= 0xFF)
    {
      goto LABEL_817;
    }

    v580 = v496;
    if ((BYTE8(v524) & 1) == 0)
    {
      goto LABEL_817;
    }

    v127 = v524;
    *&v524 = 0;
    v581 = v127;
    if (v494 <= 0xFF)
    {
      goto LABEL_817;
    }

    v582 = v494;
    if ((v493 & 0x100) == 0)
    {
      goto LABEL_817;
    }

    v583 = v493;
    if ((v492 & 0x100000000) == 0)
    {
      goto LABEL_817;
    }

    v584 = v492;
    if ((v491 & 1) == 0)
    {
      goto LABEL_817;
    }

    v585 = v490;
    if ((v521[1] & 1) == 0)
    {
      goto LABEL_817;
    }

    v128 = v521[0];
    v521[0] = 0;
    v586 = v128;
    if ((v518[1] & 1) == 0)
    {
      goto LABEL_817;
    }

    v129 = v518[0];
    v518[0] = 0;
    v587 = v129;
    if (!HIDWORD(v489))
    {
      goto LABEL_817;
    }

    v588 = v489;
    if (!HIDWORD(v488))
    {
      goto LABEL_817;
    }

    v589 = v488;
    if (!HIDWORD(v487))
    {
      goto LABEL_817;
    }

    LODWORD(v590) = v487;
    if ((v530 & 1) == 0)
    {
      goto LABEL_817;
    }

    v130 = *(&v529 + 1);
    v591 = v529;
    v529 = 0uLL;
    v592 = v130;
    if ((v486 & 0x100000000) == 0)
    {
      goto LABEL_817;
    }

    LOBYTE(v593) = v486;
    if ((v485 & 0x100000000) == 0)
    {
      goto LABEL_817;
    }

    BYTE1(v593) = v485;
    if ((v484 & 0x100000000) == 0)
    {
      goto LABEL_817;
    }

    BYTE2(v593) = v484;
    if ((v483 & 0x100000000) == 0)
    {
      goto LABEL_817;
    }

    HIBYTE(v593) = v483;
    if ((v482 & 1) == 0)
    {
      goto LABEL_817;
    }

    v594 = v481;
    if ((v540 & 1) == 0)
    {
      goto LABEL_817;
    }

    v131 = v539;
    v539 = 0;
    v595 = v131;
    if ((v480 & 0x100000000) == 0)
    {
      goto LABEL_817;
    }

    v596 = v480;
    if ((v479 & 0x100000000) == 0)
    {
      goto LABEL_817;
    }

    v597 = v479;
    if ((v478 & 0x100000000) == 0)
    {
      goto LABEL_817;
    }

    v598 = v478;
    if ((v108 & 1) == 0)
    {
      goto LABEL_817;
    }

    v599 = v477;
    if ((v111 & 1) == 0)
    {
      goto LABEL_817;
    }

    v600 = v112;
    if ((v628 & 1) == 0)
    {
      goto LABEL_817;
    }

    *v603 = v623;
    v604 = v624;
    v605 = v625;
    v606 = v626;
    v601 = v621;
    v602 = v622;
    if ((v119 & 1) == 0)
    {
      goto LABEL_817;
    }

    v607 = v120;
    if ((v123 & 1) == 0)
    {
      goto LABEL_817;
    }

    v608 = a2;
    if ((v125 & 1) == 0)
    {
      goto LABEL_817;
    }

    v609 = v126;
    WebKit::EditorState::PostLayoutData::PostLayoutData(&v550, &v579);
    v569 = 1;
    v11 = v475;
    a2 = v476;
    v16 = v473;
    v12 = v474;
    v20 = v470;
    v17 = v472;
    v48 = v498;
    if ((v595 & 0x8000000000000) != 0)
    {
      v154 = (v595 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v595 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v154);
        WTF::fastFree(v154, v115);
      }
    }

    v132 = v591;
    if (v591)
    {
      v591 = 0;
      LODWORD(v592) = 0;
      WTF::fastFree(v132, v115);
    }

    v133 = v587;
    v587 = 0;
    if (v133 && atomic_fetch_add_explicit(v133, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v133, v115);
    }

    v134 = v586;
    v586 = 0;
    if (v134 && atomic_fetch_add_explicit(v134, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v134, v115);
    }

    if ((v581 & 0x8000000000000) != 0)
    {
      v155 = (v581 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v581 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v155);
        WTF::fastFree(v155, v115);
      }
    }

LABEL_243:
    if (v540 == 1 && (v539 & 0x8000000000000) != 0)
    {
      v152 = (v539 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v539 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v152);
        WTF::fastFree(v152, v115);
      }
    }

    if (v530 == 1)
    {
      v135 = v529;
      if (v529)
      {
        *&v529 = 0;
        DWORD2(v529) = 0;
        WTF::fastFree(v135, v115);
      }
    }

    if (LOBYTE(v518[1]) == 1)
    {
      v136 = v518[0];
      v518[0] = 0;
      if (v136)
      {
        if (atomic_fetch_add_explicit(v136, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v136, v115);
        }
      }
    }

    if (LOBYTE(v521[1]) == 1)
    {
      v137 = v521[0];
      v521[0] = 0;
      if (v137)
      {
        if (atomic_fetch_add_explicit(v137, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v137, v115);
        }
      }
    }

    if (BYTE8(v524) == 1 && (v524 & 0x8000000000000) != 0)
    {
      v153 = (v524 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v524 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v153);
        WTF::fastFree(v153, v115);
      }
    }

    if ((v569 & 1) == 0)
    {
      v144 = *this;
      v145 = *(this + 1);
      *this = 0;
      *(this + 1) = 0;
      v146 = *(this + 3);
      if (!v146)
      {
        goto LABEL_380;
      }

      if (!v145)
      {
        goto LABEL_380;
      }

      v147 = v12;
      v148 = v20;
      v149 = v17;
      v150 = v147;
      (*(*v146 + 16))(v146, v144);
      v151 = v150;
      v17 = v149;
      v20 = v148;
      v12 = v151;
      v48 = v498;
      if ((v569 & 1) == 0)
      {
        goto LABEL_380;
      }
    }

    WebKit::EditorState::PostLayoutData::PostLayoutData(v612, &v550);
    v619 = 1;
    v620 = 1;
    if (v569)
    {
      goto LABEL_262;
    }

LABEL_381:
    v4 = *(this + 1);
    if ((v620 & 1) == 0)
    {
      v266 = *this;
      *this = 0;
      *(this + 1) = 0;
      v267 = *(this + 3);
      if (!v267 || !v4)
      {
        v4 = 0;
        v233 = *this;
LABEL_543:
        *this = 0;
        *(this + 1) = 0;
        v268 = *(this + 3);
        if (v268)
        {
          v282 = v12;
          v283 = v20;
          v284 = v17;
          v285 = v282;
          if (v4)
          {
            (*(*v268 + 16))(v268, v233);
            v286 = v285;
            v17 = v284;
            v20 = v283;
            v12 = v286;
            v4 = *(this + 1);
          }

          else
          {
            v17 = v284;
            v20 = v283;
            v12 = v282;
          }
        }

        else
        {
          v4 = 0;
        }

LABEL_545:
        *this = 0;
        *(this + 1) = 0;
        v269 = *(this + 3);
        if (v269)
        {
          v277 = v12;
          v278 = v20;
          v279 = v17;
          v280 = v277;
          if (v4)
          {
            (*(*v269 + 16))(v269);
            v281 = v280;
            v17 = v279;
            v20 = v278;
            v12 = v281;
            v233 = *this;
            v4 = *(this + 1);
          }

          else
          {
            v233 = 0;
            v17 = v279;
            v20 = v278;
            v12 = v277;
          }
        }

        else
        {
          v4 = 0;
          v233 = 0;
        }

LABEL_547:
        *this = 0;
        *(this + 1) = 0;
        result = *(this + 3);
        if (result && v4)
        {
          result = (*(*result + 16))(result, v233);
        }

LABEL_559:
        LOBYTE(v579) = 0;
        v611 = 0;
        goto LABEL_430;
      }

      v272 = v12;
      v273 = v20;
      v274 = v17;
      v275 = v272;
      (*(*v267 + 16))(v267, v266);
      v4 = *(this + 1);
      v276 = v275;
      v17 = v274;
      v20 = v273;
      v12 = v276;
    }

    v233 = *this;
    v234 = *(this + 2);
    if (v4 <= &v234[-*this])
    {
      goto LABEL_543;
    }

    *(this + 2) = v234 + 1;
    if (!v234)
    {
      goto LABEL_545;
    }

    v235 = *v234;
    if (v235 >= 2)
    {
      goto LABEL_547;
    }

    if (!v235)
    {
      LOBYTE(v550) = 0;
      v570 = 0;
      result = std::__optional_move_base<WebKit::EditorState::VisualData,false>::__optional_move_base[abi:sn200100](&v579, &v550);
      v611 = 1;
      if (v570 != 1)
      {
        goto LABEL_430;
      }

      goto LABEL_424;
    }

    IPC::Decoder::decode<WebCore::IntRect>(this, &v548);
    IPC::Decoder::decode<WebCore::IntRect>(this, &v546);
    IPC::Decoder::decode<WebCore::IntRect>(this, &v544);
    IPC::Decoder::decode<WebCore::IntRect>(this, &v542);
    IPC::Decoder::decode<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(this, &v539);
    IPC::Decoder::decode<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(this, &v536);
    IPC::Decoder::decode<WebCore::IntRect>(this, &v534);
    IPC::Decoder::decode<WebCore::IntRect>(this, &v532);
    IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(&v529, this);
    IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v527, this);
    IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(&v524, this);
    IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v521, this);
    IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(v518, this);
    result = IPC::Decoder::decode<WebCore::IntPoint>(this);
    v236 = result;
    v238 = v237;
    v4 = *(this + 1);
    v239 = *(this + 2);
    v240 = *this;
    v499 = v48;
    if (v4 <= &v239[-*this])
    {
      v471 = v20;
      v299 = v16;
      *this = 0;
      *(this + 1) = 0;
      v300 = *(this + 3);
      if (v300)
      {
        if (v4)
        {
          (*(*v300 + 16))(v300);
          v240 = *this;
          v4 = *(this + 1);
LABEL_585:
          *this = 0;
          *(this + 1) = 0;
          v301 = *(this + 3);
          if (v301)
          {
            if (v4)
            {
              (*(*v301 + 16))(v301, v240);
              v241 = 0;
              v240 = *this;
              v4 = *(this + 1);
LABEL_591:
              *this = 0;
              *(this + 1) = 0;
              v302 = *(this + 3);
              v16 = v299;
              v20 = v471;
              if (!v302 || !v4)
              {
                goto LABEL_592;
              }

              result = (*(*v302 + 16))(v302, v240);
              v242 = 0;
              v240 = *this;
              goto LABEL_390;
            }
          }

          else
          {
            v4 = 0;
          }

          v240 = 0;
          v241 = 0;
          goto LABEL_591;
        }
      }

      else
      {
        v4 = 0;
      }

      v240 = 0;
      goto LABEL_585;
    }

    *(this + 2) = v239 + 1;
    if (!v239)
    {
      v471 = v20;
      v299 = v16;
      goto LABEL_585;
    }

    v241 = *v239;
    if (v241 >= 2)
    {
      v471 = v20;
      v299 = v16;
      goto LABEL_591;
    }

    v242 = 1;
LABEL_390:
    if (v241)
    {
      v243 = v242;
    }

    else
    {
      v243 = 0;
    }

    if (!v240)
    {
LABEL_592:
      LOBYTE(v550) = 0;
      v570 = 0;
      v48 = v499;
      if ((v528 & 1) == 0)
      {
        goto LABEL_414;
      }

      v249 = v527[0];
      if (!v527[0])
      {
        goto LABEL_414;
      }

      goto LABEL_594;
    }

    if ((v549 & 1) == 0)
    {
      goto LABEL_817;
    }

    v621 = v548;
    if ((v547 & 1) == 0)
    {
      goto LABEL_817;
    }

    v622 = v546;
    if ((v545 & 1) == 0)
    {
      goto LABEL_817;
    }

    v623 = v544;
    if ((v543 & 1) == 0)
    {
      goto LABEL_817;
    }

    v624 = v542;
    if ((v541 & 1) == 0)
    {
      goto LABEL_817;
    }

    *&v625 = v539;
    v244 = v540;
    v539 = 0;
    v540 = 0;
    *(&v625 + 1) = v244;
    if ((v538 & 1) == 0)
    {
      goto LABEL_817;
    }

    v626 = v536;
    v245 = v537;
    v536 = 0;
    v537 = 0;
    v627 = v245;
    if ((v535 & 1) == 0)
    {
      goto LABEL_817;
    }

    v628 = v534;
    if ((v533 & 1) == 0)
    {
      goto LABEL_817;
    }

    v629 = v532;
    if ((v531 & 1) == 0)
    {
      goto LABEL_817;
    }

    v630 = v529;
    v631 = v530;
    if ((v528 & 1) == 0)
    {
      goto LABEL_817;
    }

    v246 = v527[0];
    v527[0] = 0;
    v632 = v246;
    v633 = v527[1];
    if ((v526 & 1) == 0)
    {
      goto LABEL_817;
    }

    v634 = v524;
    v635 = v525;
    if ((v523 & 1) == 0)
    {
      goto LABEL_817;
    }

    v636 = *v521;
    v637 = v522;
    if ((v520 & 1) == 0)
    {
      goto LABEL_817;
    }

    v638 = *v518;
    v639 = v519;
    if ((v238 & 1) == 0)
    {
      goto LABEL_817;
    }

    v640 = v236;
    if ((v242 & 1) == 0)
    {
      goto LABEL_817;
    }

    v641 = v243;
    WebKit::EditorState::VisualData::VisualData(&v550, &v621);
    v570 = 1;
    v247 = v632;
    v48 = v499;
    if (v632)
    {
      v632 = 0;
      LODWORD(v633) = 0;
      WTF::fastFree(v247, v240);
    }

    v248 = v626;
    if (v626)
    {
      v626 = 0;
      LODWORD(v627) = 0;
      WTF::fastFree(v248, v240);
    }

    v249 = v625;
    if (!v625)
    {
      goto LABEL_414;
    }

    *&v625 = 0;
    DWORD2(v625) = 0;
LABEL_594:
    WTF::fastFree(v249, v240);
LABEL_414:
    if (v538 == 1)
    {
      v250 = v536;
      if (v536)
      {
        v536 = 0;
        LODWORD(v537) = 0;
        WTF::fastFree(v250, v240);
      }
    }

    if (v541 == 1)
    {
      v251 = v539;
      if (v539)
      {
        v539 = 0;
        LODWORD(v540) = 0;
        WTF::fastFree(v251, v240);
      }
    }

    if ((v570 & 1) == 0)
    {
      v233 = *this;
      v4 = *(this + 1);
      *this = 0;
      *(this + 1) = 0;
      result = *(this + 3);
      if (!result)
      {
        goto LABEL_559;
      }

      if (!v4)
      {
        goto LABEL_559;
      }

      v287 = v12;
      v288 = v20;
      v289 = v17;
      v290 = v287;
      result = (*(*result + 16))(result, v233);
      v291 = v290;
      v17 = v289;
      v20 = v288;
      v12 = v291;
      if ((v570 & 1) == 0)
      {
        goto LABEL_559;
      }
    }

    result = WebKit::EditorState::VisualData::VisualData(&v579, &v550);
    v610 = 1;
    v611 = 1;
    if ((v570 & 1) == 0)
    {
      goto LABEL_430;
    }

LABEL_424:
    v252 = v567;
    if (v567)
    {
      v567 = 0;
      v568 = 0;
      WTF::fastFree(v252, v233);
    }

    v253 = v561;
    if (v561)
    {
      v561 = 0;
      v562 = 0;
      WTF::fastFree(v253, v233);
    }

    result = v559;
    if (v559)
    {
      v559 = 0;
      LODWORD(v560) = 0;
      result = WTF::fastFree(result, v233);
    }

LABEL_430:
    if ((v611 & 1) == 0)
    {
      v233 = *this;
      v4 = *(this + 1);
      *this = 0;
      *(this + 1) = 0;
      result = *(this + 3);
      if (result)
      {
        if (v4)
        {
          result = (*(*result + 16))(result, v233);
        }
      }
    }

    if (!*this)
    {
      *a2 = 0;
      *(a2 + 544) = 0;
      goto LABEL_464;
    }

    if (v12)
    {
      *&v550 = v11;
      if (v16)
      {
        BYTE8(v550) = v17;
        if (v20)
        {
          BYTE9(v550) = v517;
          if (v516)
          {
            BYTE10(v550) = v515;
            if (v514)
            {
              BYTE11(v550) = v513;
              if (v512)
              {
                BYTE12(v550) = v511;
                if (v510)
                {
                  BYTE13(v550) = v509;
                  if (v508)
                  {
                    BYTE14(v550) = v507;
                    if (v506)
                    {
                      HIBYTE(v550) = v505;
                      if (v504)
                      {
                        v551 = v503;
                        if (v502)
                        {
                          v552 = v501;
                          if (v500)
                          {
                            v553 = v48;
                            if (v620)
                            {
                              result = std::__optional_move_base<WebKit::EditorState::PostLayoutData,false>::__optional_move_base[abi:sn200100](v555, v612);
                              if (v611)
                              {
                                break;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_817:
    __break(1u);
LABEL_818:
    if (v4)
    {
      (*(*result + 16))(result);
      v4 = *(this + 1);
    }
  }

  std::__optional_move_base<WebKit::EditorState::VisualData,false>::__optional_move_base[abi:sn200100](v571, &v579);
  result = std::optional<WebKit::EditorState>::optional[abi:sn200100]<WebKit::EditorState,0>(a2, &v550);
  if (v578 == 1)
  {
    v254 = v576;
    if (v576)
    {
      v576 = 0;
      v577 = 0;
      WTF::fastFree(v254, v233);
    }

    v255 = v574;
    if (v574)
    {
      v574 = 0;
      v575 = 0;
      WTF::fastFree(v255, v233);
    }

    result = v572;
    if (v572)
    {
      v572 = 0;
      v573 = 0;
      result = WTF::fastFree(result, v233);
    }
  }

  if (v570 == 1)
  {
    if ((v566 & 0x8000000000000) != 0)
    {
      v270 = (v566 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v566 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v270);
        WTF::fastFree(v270, v233);
      }
    }

    v256 = v564;
    if (v564)
    {
      v564 = 0;
      v565 = 0;
      WTF::fastFree(v256, v233);
    }

    v257 = v561;
    v561 = 0;
    if (v257 && atomic_fetch_add_explicit(v257, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v257, v233);
    }

    result = v560;
    v560 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v233);
    }

    if ((v558 & 0x8000000000000) != 0)
    {
      result = (v558 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v558 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        result = WTF::fastFree(result, v233);
      }
    }
  }

LABEL_464:
  if (v611 == 1 && v610 == 1)
  {
    v258 = v603[1];
    if (v603[1])
    {
      v603[1] = 0;
      LODWORD(v604) = 0;
      WTF::fastFree(v258, v233);
    }

    v259 = v592;
    if (v592)
    {
      v592 = 0;
      v593 = 0;
      WTF::fastFree(v259, v233);
    }

    result = v590;
    if (v590)
    {
      v590 = 0;
      LODWORD(v591) = 0;
      result = WTF::fastFree(result, v233);
    }
  }

  if (v620 == 1 && v619 == 1)
  {
    if ((v618 & 0x8000000000000) != 0)
    {
      v271 = (v618 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v618 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v271);
        WTF::fastFree(v271, v233);
      }
    }

    v260 = v616;
    if (v616)
    {
      v616 = 0;
      v617 = 0;
      WTF::fastFree(v260, v233);
    }

    v261 = v615;
    v615 = 0;
    if (v261 && atomic_fetch_add_explicit(v261, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v261, v233);
    }

    result = v614;
    v614 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v233);
    }

    if ((v613 & 0x8000000000000) != 0)
    {
      result = (v613 & 0xFFFFFFFFFFFFLL);
      if (atomic_fetch_add((v613 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result);
        return WTF::fastFree(result, v233);
      }
    }
  }

  return result;
}

void sub_19D6DA964(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, WTF::StringImpl *a41, char a42, uint64_t a43, uint64_t a44, WTF::StringImpl *a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, WTF *a53, uint64_t a54, uint64_t a55, WTF *a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a69 == 1 && (a68 & 0x8000000000000) != 0)
  {
    v70 = (a68 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a68 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v70);
      WTF::fastFree(v70, a2);
    }
  }

  if (a58 == 1 && a56)
  {
    WTF::fastFree(a56, a2);
  }

  if (a42 == 1 && a41 && atomic_fetch_add_explicit(a41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a41, a2);
  }

  if (a46 == 1 && a45 && atomic_fetch_add_explicit(a45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a45, a2);
  }

  if (a50 == 1 && (a49 & 0x8000000000000) != 0)
  {
    v71 = (a49 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a49 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v71);
      WTF::fastFree(v71, a2);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<WebKit::EditorState>::optional[abi:sn200100]<WebKit::EditorState,0>(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = v4;
  std::__optional_move_base<WebKit::EditorState::PostLayoutData,false>::__optional_move_base[abi:sn200100]((a1 + 32), (a2 + 2));
  std::__optional_move_base<WebKit::EditorState::VisualData,false>::__optional_move_base[abi:sn200100]((a1 + 272), (a2 + 17));
  *(a1 + 544) = 1;
  return a1;
}

void sub_19D6DAFC8(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 256) == 1)
  {
    WebKit::EditorState::PostLayoutData::~PostLayoutData((v2 + 32), a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::EditorState::PostLayoutData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 24));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 33));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 34));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 35));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 60));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 72);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 88));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 89));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 90));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 91));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 92));
  IPC::ArgumentCoder<WebCore::Color,void>::encode(a1, (a2 + 96));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 104));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 105));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 106));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 107));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 108));
  IPC::ArgumentCoder<std::optional<WebCore::ElementContext>,void>::encode<IPC::Encoder,std::optional<WebCore::ElementContext> const&>(a1, a2 + 112);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 208));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 209));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 210));
}

uint64_t IPC::Decoder::decode<char32_t>(void *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = v2 - *a1;
  v4 = v1 >= v3;
  v5 = v1 - v3;
  if (v4 && v5 > 3)
  {
    a1[2] = v2 + 1;
    if (v2)
    {
      v8 = *v2;
      v7 = *v2 & 0xFFFFFF00;
      v8 = v8;
      v9 = 0x100000000;
      return v9 | v8 | v7;
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    v10 = a1[3];
    if (v10)
    {
      v13 = a1;
      if (v1)
      {
        (*(*v10 + 16))(v10);
        a1 = v13;
        v1 = v13[1];
      }
    }

    else
    {
      v1 = 0;
    }
  }

  *a1 = 0;
  a1[1] = 0;
  v11 = a1[3];
  if (v11 && v1)
  {
    (*(*v11 + 16))(v11);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  return v9 | v8 | v7;
}

WTF *IPC::Decoder::decode<WTF::Vector<WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebCore::DictationContextType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D6DB2E4(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::EditorState::VisualData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, a2);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 32));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 48));
  IPC::VectorArgumentCoder<false,WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 64);
  IPC::VectorArgumentCoder<false,WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 96));
  IPC::ArgumentCoder<WebCore::IntRect,void>::encode(a1, (a2 + 112));
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 128);
  IPC::VectorArgumentCoder<false,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 152);
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 168);
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 192);
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2 + 216);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 240));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 244));

  return IPC::Encoder::operator<<<BOOL>(a1, (a2 + 248));
}

unint64_t IPC::Decoder::decode<WebCore::IntRect>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::IntRect,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::VectorArgumentCoder<false,WebCore::SelectionGeometry,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D6DB4F0(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *v2 = 0;
      *(v2 + 8) = 0;
      WTF::fastFree(v4, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v15 = *(a2 + 3);
    if (v15)
    {
      if (v6)
      {
        (*(*v15 + 16))(v15);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_33:
        *a2 = 0;
        *(a2 + 1) = 0;
        v16 = *(a2 + 3);
        if (v16 && v6)
        {
          (*(*v16 + 16))(v16, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_33;
  }

  *(a2 + 2) = v4 + 8;
  if (!v4)
  {
    goto LABEL_33;
  }

  v8 = *v4;
  v19 = 0;
  v20 = 0;
  if (v8 >= 0x10000)
  {
    while (1)
    {
      IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v17);
      if ((v18 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v20) == v20)
      {
        WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v19, &v17);
      }

      else
      {
        *(v19 + HIDWORD(v20)) = v17;
        ++HIDWORD(v20);
      }

      if (!--v8)
      {
        WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v19, HIDWORD(v20));
        goto LABEL_15;
      }
    }
  }

  else
  {
    if (!v8)
    {
LABEL_15:
      v9 = v19;
      v19 = 0;
      *a1 = v9;
      v10 = v20;
      HIDWORD(v20) = 0;
      *(a1 + 8) = v10;
      v11 = 1;
      *(a1 + 16) = 1;
      goto LABEL_22;
    }

    LODWORD(v20) = v8;
    v19 = WTF::fastMalloc((16 * v8));
    while (1)
    {
      IPC::Decoder::decode<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2, &v17);
      if ((v18 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v20) == v20)
      {
        WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(&v19, &v17);
      }

      else
      {
        *(v19 + HIDWORD(v20)) = v17;
        ++HIDWORD(v20);
      }

      if (!--v8)
      {
        goto LABEL_15;
      }
    }
  }

  v11 = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_22:
  result = v19;
  if (v19)
  {
    v19 = 0;
    LODWORD(v20) = 0;
    result = WTF::fastFree(result, v5);
    if (v11)
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

LABEL_26:
  v13 = *a2;
  v14 = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = 0;
  result = *(a2 + 3);
  if (result)
  {
    if (v14)
    {
      return (*(*result + 16))(result, v13);
    }
  }

  return result;
}

void sub_19D6DB7F4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF *a13, int a14)
{
  if (a13)
  {
    WTF::fastFree(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(uint64_t a1, uint64_t *a2)
{
  result = IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::decode<IPC::Decoder>(a2, a1);
  if ((*(a1 + 24) & 1) == 0)
  {
    v5 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    result = a2[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

unint64_t IPC::Decoder::decode<WebCore::IntPoint>(IPC::Decoder *a1)
{
  result = IPC::ArgumentCoder<WebCore::IntPoint,void>::decode(a1);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    IPC::Decoder::markInvalid(a1);
    return v4;
  }

  return result;
}

void WebKit::EditorState::VisualData::~VisualData(WebKit::EditorState::VisualData *this, void *a2)
{
  v3 = *(this + 19);
  if (v3)
  {
    *(this + 19) = 0;
    *(this + 40) = 0;
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 10) = 0;
    *(this + 22) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 8);
  if (v5)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v5, a2);
  }
}

uint64_t *IPC::ArgumentCoder<WebKit::KeyEventInterpretationContext,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1[3];
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_16:
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12)
    {
      if (v4)
      {
        (*(*v12 + 16))(v12);
        v14 = 0;
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_20;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    v14 = 0;
    goto LABEL_20;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = *v5;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

  v14 = v7;
LABEL_20:
  *a1 = 0;
  a1[1] = 0;
  v13 = a1[3];
  if (v13 && v4)
  {
    (*(*v13 + 16))(v13, v6);
  }

  v8 = 0;
  v7 = v14;
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result = IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::ScrollingNodeIDType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(&v15, a1);
  if (*a1)
  {
    if (v8 & 1) != 0 && (v17)
    {
      *&v18[7] = v15;
      v18[23] = v16;
      *a2 = v9;
      *(a2 + 1) = *v18;
      *(a2 + 17) = *&v18[16];
      *(a2 + 32) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionAlarmParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  v4 = *(a2 + 24);

  return IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebExtensionAlarmParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v12);
  v4 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v9 = v8;
  result = IPC::Decoder::decode<WTF::MonotonicTime>(a1);
  if (*a1)
  {
    if (v13 & 1) != 0 && (v6 & 1) != 0 && (v9 & 1) != 0 && (v11)
    {
      *a2 = v12;
      *(a2 + 8) = v4;
      *(a2 + 16) = v7;
      *(a2 + 24) = result;
      *(a2 + 32) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 32) = 0;
  if (v13)
  {
    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v11);
      }
    }
  }

  return result;
}

void sub_19D6DBC64(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10)
{
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::MonotonicTime>(IPC::Decoder *a1)
{
  result = IPC::Decoder::decode<unsigned long long>(a1);
  if (*a1)
  {
    if (v3)
    {
      return result;
    }

    __break(1u);
  }

  IPC::Decoder::markInvalid(a1);
  return 0;
}

void *IPC::ArgumentCoder<WebKit::WebExtensionCommandParameters,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 2);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebExtensionCommandParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v13);
  IPC::Decoder::decode<WTF::String>(a1, &v11);
  result = IPC::Decoder::decode<WTF::String>(a1, &v9);
  if (*a1)
  {
    if (v14)
    {
      v6 = v13;
      v13 = 0;
      if (v12)
      {
        v7 = v11;
        v11 = 0;
        if (v10)
        {
          v8 = v9;
          *a2 = v6;
          *(a2 + 8) = v7;
          *(a2 + 16) = v8;
          *(a2 + 24) = 1;
          goto LABEL_6;
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (v10)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

LABEL_6:
  if (v12 == 1)
  {
    result = v11;
    v11 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D6DBE5C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, char a12, WTF::StringImpl *a13, char a14)
{
  if ((a12 & 1) != 0 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionContextParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::MarkableTraits<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionContextIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  IPC::ArgumentCoder<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>,void>::encode<IPC::Encoder>(a1, (a2 + 64));
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, (a2 + 72));
  IPC::ArgumentCoder<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>,void>::encode<IPC::Encoder,API::Data>(a1, a2 + 80);
  IPC::ArgumentCoder<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>,void>::encode<IPC::Encoder,API::Data>(a1, a2 + 88);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 104));
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::NavigationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2 + 112);
  IPC::VectorArgumentCoder<false,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 128);

  return IPC::VectorArgumentCoder<false,std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 144);
}

void IPC::ArgumentCoder<WebKit::WebExtensionContextParameters,void>::decode(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  v7 = a1[1];
  v8 = a1[2];
  v9 = *a1;
  if (v7 <= &v8[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v43 = a1[3];
    if (v43)
    {
      if (v7)
      {
        (*(*v43 + 16))(v43);
        v7 = a1[1];
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_70;
  }

  a1[2] = (v8 + 1);
  if (!v8)
  {
LABEL_70:
    *a1 = 0;
    a1[1] = 0;
    v44 = a1[3];
    if (v44)
    {
      if (v7)
      {
        (*(*v44 + 16))(v44);
        v9 = *a1;
        v7 = a1[1];
        goto LABEL_73;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = 0;
LABEL_73:
    *a1 = 0;
    a1[1] = 0;
    v45 = a1[3];
    if (v45 && v7)
    {
      (*(*v45 + 16))(v45, v9);
    }

    goto LABEL_74;
  }

  v10 = *v8;
  if (v10 >= 2)
  {
    goto LABEL_73;
  }

  if (v10)
  {
    v11 = 0;
LABEL_8:
    v14 = 1;
    goto LABEL_9;
  }

  v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v13)
  {
    v11 = v12;
    goto LABEL_8;
  }

LABEL_74:
  v46 = *a1;
  v47 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v48 = a1[3];
  if (v48 && v47)
  {
    (*(*v48 + 16))(v48, v46);
  }

  v11 = 0;
  v14 = 0;
LABEL_9:
  IPC::Decoder::decode<WTF::URL>(a1, &v85);
  IPC::Decoder::decode<WTF::String>(a1, &v83);
  IPC::Decoder::decode<WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(&v81, a1);
  IPC::ArgumentCoder<WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::decode<IPC::Decoder>(a1, &v79);
  if ((v80 & 1) == 0)
  {
    v40 = *a1;
    v41 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v42 = a1[3];
    if (v42)
    {
      if (v41)
      {
        (*(*v42 + 16))(v42, v40);
      }
    }
  }

  IPC::Decoder::decode<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>(&v77, a1);
  IPC::Decoder::decode<WTF::RefPtr<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>(&v75, a1);
  v15 = IPC::Decoder::decode<unsigned long long>(a1);
  v17 = v16;
  v18 = a1[1];
  v19 = a1[2];
  v20 = *a1;
  if (v18 <= &v19[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v49 = a1[3];
    if (v49)
    {
      if (v18)
      {
        (*(*v49 + 16))(v49);
        v18 = a1[1];
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_80:
    *a1 = 0;
    a1[1] = 0;
    v50 = a1[3];
    if (v50)
    {
      if (v18)
      {
        (*(*v50 + 16))(v50);
        v21 = 0;
        v20 = *a1;
        v18 = a1[1];
        goto LABEL_83;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
    v21 = 0;
    goto LABEL_83;
  }

  a1[2] = (v19 + 1);
  if (!v19)
  {
    goto LABEL_80;
  }

  v21 = *v19;
  if (v21 < 2)
  {
    v22 = 1;
    goto LABEL_14;
  }

LABEL_83:
  *a1 = 0;
  a1[1] = 0;
  v51 = a1[3];
  if (v51 && v18)
  {
    (*(*v51 + 16))(v51, v20);
  }

  v22 = 0;
LABEL_14:
  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, &v72);
  if ((v74 & 1) == 0)
  {
    v37 = *a1;
    v38 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v39 = a1[3];
    if (v39)
    {
      if (v38)
      {
        (*(*v39 + 16))(v39, v37);
      }
    }
  }

  IPC::Decoder::decode<WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v70, a1);
  v24 = IPC::Decoder::decode<WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v68, a1);
  if (*a1)
  {
    if ((v6 & 1) == 0 || (v52[0] = v4, (v14 & 1) == 0) || (v52[1] = v11, (v88 & 1) == 0) || (v26 = v85, v85 = 0, v52[2] = v26, v53 = v86, v54 = v87, LODWORD(v86) = v86 & 0xFFFFFFFE, (v84 & 1) == 0) || (v27 = v83, v83 = 0, v55 = v27, (v82 & 1) == 0) || (v28 = v81, v81 = 0, v56 = v28, (v80 & 1) == 0) || (v29 = v79, v79 = 0, v57 = v29, (v78 & 1) == 0) || (v30 = v77, v77 = 0, v58 = v30, (v76 & 1) == 0) || (v31 = v75, v75 = 0, v59 = v31, (v17 & 1) == 0) || (v60 = v15, (v22 & 1) == 0) || (v61 = v23, (v74 & 1) == 0) || (v62 = v72, v63 = v73, (v71 & 1) == 0) || (v32 = v70[0], v70[0] = 0, v64 = v32, v65 = v70[1], (v69 & 1) == 0))
    {
      __break(1u);
LABEL_59:
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v24, v25);
      goto LABEL_49;
    }

    v33 = v68[0];
    v68[0] = 0;
    v66 = v33;
    v67 = v68[1];
    WebKit::WebExtensionContextParameters::WebExtensionContextParameters(a2, v52);
    a2[160] = 1;
    WebKit::WebExtensionContextParameters::~WebExtensionContextParameters(v52, v34);
  }

  else
  {
    *a2 = 0;
    a2[160] = 0;
    if ((v69 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (v68[0])
  {
    WTF::fastFree(v68[0], v25);
  }

LABEL_35:
  if (v71 == 1 && v70[0])
  {
    WTF::fastFree(v70[0], v25);
  }

  if (v76 == 1 && v75)
  {
    CFRelease(*(v75 + 8));
  }

  if (v78 == 1 && v77)
  {
    CFRelease(*(v77 + 8));
  }

  if (v80 == 1 && v79)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v79, v25);
  }

  if (v82 == 1)
  {
    v24 = v81;
    if (v81)
    {
      goto LABEL_59;
    }
  }

LABEL_49:
  if (v84 == 1)
  {
    v35 = v83;
    v83 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v25);
      }
    }
  }

  if (v88 == 1)
  {
    v36 = v85;
    v85 = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v25);
      }
    }
  }
}

void sub_19D6DC578(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, WTF *a32, uint64_t a33, char a34)
{
  if (*(v34 - 208) == 1)
  {
    v36 = *(v34 - 216);
    if (v36)
    {
      CFRelease(*(v36 + 8));
    }
  }

  if (*(v34 - 192) == 1)
  {
    v37 = *(v34 - 200);
    if (v37)
    {
      CFRelease(*(v37 + 8));
    }
  }

  if (*(v34 - 176) == 1)
  {
    v38 = *(v34 - 184);
    if (v38)
    {
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v38, a2);
    }
  }

  if (*(v34 - 160) == 1)
  {
    v39 = *(v34 - 168);
    if (v39)
    {
      WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v39, a2);
    }
  }

  if (*(v34 - 144) == 1)
  {
    v40 = *(v34 - 152);
    *(v34 - 152) = 0;
    if (v40)
    {
      if (atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v40, a2);
      }
    }
  }

  if (*(v34 - 96) == 1)
  {
    v41 = *(v34 - 136);
    *(v34 - 136) = 0;
    if (v41)
    {
      if (atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v41, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *IPC::Decoder::decode<WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = ((*(a2 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v34 = *(a2 + 3);
    if (v34)
    {
      if (v6)
      {
        (*(*v34 + 16))(v34);
        v5 = *a2;
        v6 = *(a2 + 1);
LABEL_42:
        *a2 = 0;
        *(a2 + 1) = 0;
        v35 = *(a2 + 3);
        if (v35 && v6)
        {
          (*(*v35 + 16))(v35, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_44:
        v36 = *a2;
        v37 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          if (v37)
          {
            return (*(*result + 16))(result, v36);
          }
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_42;
  }

  *(a2 + 2) = v4 + 8;
  if (!v4)
  {
    goto LABEL_42;
  }

  v8 = *v4;
  v42 = 0;
  v43 = 0;
  if (v8 >= 0x6666)
  {
    do
    {
      result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(&v38, a2);
      if ((v41 & 1) == 0)
      {
        goto LABEL_31;
      }

      v22 = HIDWORD(v43);
      if (HIDWORD(v43) == v43)
      {
        result = WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v42, HIDWORD(v43) + 1, &v38);
        v22 = HIDWORD(v43);
        v23 = v42;
        v24 = v42 + 40 * HIDWORD(v43);
        v25 = *result;
        v26 = *(result + 1);
        *(v24 + 4) = *(result + 4);
      }

      else
      {
        v23 = v42;
        v24 = v42 + 40 * HIDWORD(v43);
        v25 = v38;
        v26 = v39;
        *(v24 + 4) = v40;
      }

      *v24 = v25;
      *(v24 + 1) = v26;
      v27 = (v22 + 1);
      HIDWORD(v43) = v27;
      --v8;
    }

    while (v8);
    if (v43 <= v27)
    {
      v12 = v23;
      goto LABEL_17;
    }

    if (!v27)
    {
      goto LABEL_37;
    }

    v28 = v23;
    if (v27 >= 0x6666667)
    {
      __break(0xC471u);
      return result;
    }

    v29 = 40 * v27;
    v12 = WTF::fastMalloc((40 * v27));
    LODWORD(v43) = v29 / 0x28;
    v42 = v12;
    v23 = v28;
    if (v12 == v28)
    {
LABEL_37:
      v42 = 0;
      LODWORD(v43) = 0;
    }

    else
    {
      v30 = 0;
      do
      {
        v31 = v12 + v30;
        v32 = *(v28 + v30);
        v33 = *(v28 + v30 + 16);
        *(v31 + 4) = *(v28 + v30 + 32);
        *v31 = v32;
        *(v31 + 1) = v33;
        v30 += 40;
      }

      while (v29 != v30);
      if (!v28)
      {
        goto LABEL_17;
      }
    }

    WTF::fastFree(v23, v5);
    v12 = v42;
    goto LABEL_17;
  }

  if (!v8)
  {
    v12 = 0;
LABEL_17:
    v42 = 0;
    *a1 = v12;
    v19 = v43;
    HIDWORD(v43) = 0;
    *(a1 + 8) = v19;
    v20 = 1;
    *(a1 + 16) = 1;
    goto LABEL_32;
  }

  LODWORD(v43) = 40 * v8 / 0x28u;
  v42 = WTF::fastMalloc((40 * v8));
  while (1)
  {
    IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>(&v38, a2);
    if ((v41 & 1) == 0)
    {
      break;
    }

    v9 = HIDWORD(v43);
    if (HIDWORD(v43) == v43)
    {
      v10 = WTF::Vector<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionWindowIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v42, HIDWORD(v43) + 1, &v38);
      v11 = HIDWORD(v43);
      v12 = v42;
      v13 = v42 + 40 * HIDWORD(v43);
      v14 = *v10;
      v15 = *(v10 + 16);
      *(v13 + 4) = *(v10 + 32);
      *v13 = v14;
      *(v13 + 1) = v15;
      v9 = v11;
    }

    else
    {
      v12 = v42;
      v16 = v42 + 40 * HIDWORD(v43);
      v17 = v38;
      v18 = v39;
      *(v16 + 4) = v40;
      *v16 = v17;
      *(v16 + 1) = v18;
    }

    HIDWORD(v43) = v9 + 1;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

LABEL_31:
  v20 = 0;
  *a1 = 0;
  *(a1 + 16) = 0;
LABEL_32:
  result = v42;
  if (v42)
  {
    v42 = 0;
    LODWORD(v43) = 0;
    result = WTF::fastFree(result, v5);
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_44;
  }

  return result;
}

void sub_19D6DCA20(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, int a16)
{
  if (a15)
  {
    WTF::fastFree(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionControllerParameters,void>::decode(_BYTE *a1, IPC::Decoder *a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  v6 = v5;
  v7 = IPC::Decoder::decode<BOOL>(a2);
  result = IPC::Decoder::decode<WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v14, a2);
  if (*a2)
  {
    if ((v6 & 1) == 0 || (v11 = v4, (v7 & 0x100) == 0) || (v12 = v7, (v15 & 1) == 0))
    {
      __break(1u);
      return result;
    }

    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v13, v14);
    std::optional<WebKit::WebExtensionControllerParameters>::optional[abi:sn200100]<WebKit::WebExtensionControllerParameters,0>(a1, &v11);
    result = WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v13, v10);
  }

  else
  {
    *a1 = 0;
    a1[32] = 0;
  }

  if (v15 == 1)
  {
    return WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v14, v9);
  }

  return result;
}

void sub_19D6DCB14(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v16 + 16, a2);
  if (a16 == 1)
  {
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a14, v18);
  }

  _Unwind_Resume(a1);
}

unint64_t IPC::Decoder::decode<WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(_BYTE *a1, IPC::Decoder *a2)
{
  result = IPC::VectorArgumentCoder<false,WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, a2);
  if ((a1[16] & 1) == 0)
  {
    return IPC::Decoder::markInvalid(a2);
  }

  return result;
}

void sub_19D6DCB80(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 16) == 1)
  {
    WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

void *WTF::Vector<WebKit::WebExtensionContextParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(void *a1, _DWORD *a2)
{
  *a1 = 0;
  a1[1] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

void sub_19D6DCBCC(_Unwind_Exception *exception_object, void *a2)
{
  v4 = *v2;
  if (*v2)
  {
    *v2 = 0;
    *(v2 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebKit::WebExtensionControllerParameters>::optional[abi:sn200100]<WebKit::WebExtensionControllerParameters,0>(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 16, a2 + 4);
  *(a1 + 32) = 1;
  return a1;
}

void sub_19D6DCC44(_Unwind_Exception *exception_object, void *a2)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    WTF::fastFree(v6, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebKit::WebExtensionCookieParameters,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<PAL::SessionID>,void>::decode<IPC::Decoder>(a1, &v14);
  if ((v16 & 1) == 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
    IPC::Decoder::decode<WebCore::Cookie>(a1, v12);
    if (!*a1)
    {
      break;
    }

    if (v16)
    {
      *&v10 = v14;
      BYTE8(v10) = v15;
      if (v13)
      {
        WebCore::Cookie::Cookie(v11, v12);
        *a2 = v10;
        WebCore::Cookie::Cookie(a2 + 16, v11);
        *(a2 + 160) = 1;
        WebCore::Cookie::~Cookie(v11, v5);
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_10:
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      (*(*v8 + 16))(v8, v6);
    }
  }

  *a2 = 0;
  *(a2 + 160) = 0;
LABEL_6:
  if (v13 == 1)
  {
    WebCore::Cookie::~Cookie(v12, v4);
  }
}

void sub_19D6DCD7C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  WebCore::Cookie::~Cookie((v47 + 16), a2);
  if (a47 == 1)
  {
    WebCore::Cookie::~Cookie(&a29, v49);
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::Cookie>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::Cookie,void>::decode(a1, a2);
  if ((a2[144] & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D6DCE1C(_Unwind_Exception *exception_object, void *a2)
{
  if (*(v2 + 144) == 1)
  {
    WebCore::Cookie::~Cookie(v2, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionCookieFilterParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, a2 + 32);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 48));

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 50));
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionCookieFilterParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v20);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v17);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v14);
  v4 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  result = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (!*a1)
  {
    goto LABEL_47;
  }

  if ((v22 & 1) == 0)
  {
    goto LABEL_46;
  }

  v7 = v21;
  if (v21 == 1)
  {
    v8 = v20;
    v20 = 0;
  }

  else
  {
    v8 = 0;
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_46;
  }

  v9 = v18;
  if (v18 == 1)
  {
    v10 = v17;
    v17 = 0;
  }

  else
  {
    v10 = 0;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_46;
  }

  v11 = v15;
  if (v15 == 1)
  {
    v12 = v14;
    v14 = 0;
    if ((v4 & 0x10000) != 0)
    {
      goto LABEL_15;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    *a2 = 0;
    *(a2 + 56) = 0;
    goto LABEL_30;
  }

  v12 = 0;
  if ((v4 & 0x10000) == 0)
  {
    goto LABEL_46;
  }

LABEL_15:
  if ((result & 0x10000) == 0)
  {
    goto LABEL_46;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  if (v7)
  {
    *a2 = v8;
    *(a2 + 8) = 1;
    v8 = 0;
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (v9)
  {
    *(a2 + 16) = v10;
    *(a2 + 24) = 1;
    v10 = 0;
  }

  v13 = v4 | (result << 16);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  if (v11)
  {
    *(a2 + 32) = v12;
    *(a2 + 40) = 1;
  }

  *(a2 + 48) = v13;
  *(a2 + 56) = 1;
  if (v9 && v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v10, v6);
    if (!v7)
    {
      goto LABEL_30;
    }
  }

  else if (!v7)
  {
    goto LABEL_30;
  }

  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v8, v6);
  }

LABEL_30:
  if (v16 == 1 && v15 == 1)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  if (v19 == 1 && v18 == 1)
  {
    result = v17;
    v17 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  if (v22 == 1 && v21 == 1)
  {
    result = v20;
    v20 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

void sub_19D6DD0E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, char a11, int a12, __int16 a13, char a14, char a15, WTF::StringImpl *a16, char a17, int a18, __int16 a19, char a20, char a21, WTF::StringImpl *a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a13 == 1 && a11 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a19 == 1 && a17 == 1 && a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a25 == 1 && a23 == 1 && a22 && atomic_fetch_add_explicit(a22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a22, a2);
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<std::optional<WTF::String>>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WTF::String>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D6DD220(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 16) == 1 && *(v2 + 8) == 1)
  {
    v4 = *v2;
    *v2 = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionScriptInjectionParameters,void>::encode(IPC::Encoder *a1, _BYTE *a2)
{
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>,void>::encode<IPC::Encoder,std::optional<WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, (a2 + 32));
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, (a2 + 56));
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, (a2 + 80));
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 104));
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 120));
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 136));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, a2[152]);
  v5 = a2[153];
  return IPC::Encoder::operator<<<BOOL>(a1, &v5);
}

void IPC::ArgumentCoder<WebKit::WebExtensionScriptInjectionParameters,void>::decode(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v113);
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v11 = a1[3];
    if (v11)
    {
      if (v5)
      {
        (*(*v11 + 16))(v11);
        v5 = a1[1];
      }
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_10;
  }

  a1[2] = (v6 + 1);
  if (!v6)
  {
LABEL_10:
    *a1 = 0;
    a1[1] = 0;
    v12 = a1[3];
    if (v12)
    {
      if (v5)
      {
        (*(*v12 + 16))(v12);
        v7 = *a1;
        v5 = a1[1];
        goto LABEL_13;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
LABEL_13:
    *a1 = 0;
    a1[1] = 0;
    v13 = a1[3];
    if (v13 && v5)
    {
      (*(*v13 + 16))(v13, v7);
    }

    goto LABEL_14;
  }

  v8 = *v6;
  if (v8 >= 2)
  {
    goto LABEL_13;
  }

  if (!v8)
  {
    v2 = 0;
    v9 = 0;
    v10 = 1;
    goto LABEL_16;
  }

  IPC::Decoder::decode<WTF::Ref<API::Data,WTF::RawPtrTraits<API::Data>,WTF::DefaultRefDerefTraits<API::Data>>>(&v79, a1);
  if (v80 == 1)
  {
    v9 = v79;
    v10 = 1;
    v2 = 1;
    goto LABEL_16;
  }

LABEL_14:
  v14 = *a1;
  v15 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v16 = a1[3];
  if (v16 && v15)
  {
    (*(*v16 + 16))(v16, v14);
  }

  v10 = 0;
  v9 = 0;
LABEL_16:
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v111, a1);
  v17 = a1[1];
  v18 = a1[2];
  v19 = *a1;
  if (v17 <= v18 - *a1)
  {
    *a1 = 0;
    a1[1] = 0;
    v76 = a1[3];
    if (v76)
    {
      if (v17)
      {
        (*(*v76 + 16))(v76);
        v17 = a1[1];
      }
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_156;
  }

  a1[2] = v18 + 1;
  if (!v18)
  {
LABEL_156:
    *a1 = 0;
    a1[1] = 0;
    v77 = a1[3];
    if (v77)
    {
      if (v17)
      {
        (*(*v77 + 16))(v77);
        v19 = *a1;
        v17 = a1[1];
        goto LABEL_159;
      }
    }

    else
    {
      v17 = 0;
    }

    v19 = 0;
LABEL_159:
    *a1 = 0;
    a1[1] = 0;
    v78 = a1[3];
    if (v78 && v17)
    {
      (*(*v78 + 16))(v78, v19);
    }

    goto LABEL_150;
  }

  if (*v18 >= 2u)
  {
    goto LABEL_159;
  }

  if (!*v18)
  {
    LOBYTE(v79) = 0;
    LOBYTE(v81) = 0;
    std::__optional_move_base<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v107, &v79);
    v110 = 1;
    if (v81 != 1)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = ((v18 & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 < v21 - v19 || v17 - (v21 - v19) <= 7)
  {
    v69 = 0;
    v70 = 0;
    *a1 = 0;
    a1[1] = 0;
    v71 = a1[3];
    if (v71)
    {
      (*(*v71 + 16))(v71);
      v70 = *a1;
      v69 = a1[1];
    }

    goto LABEL_147;
  }

  a1[2] = v20 + 16;
  if (!v21)
  {
    v69 = v17;
    v70 = v19;
LABEL_147:
    *a1 = 0;
    a1[1] = 0;
    v72 = a1[3];
    if (v72 && v69)
    {
      (*(*v72 + 16))(v72, v70, v69);
    }

    LOBYTE(v79) = 0;
    LOBYTE(v81) = 0;
LABEL_149:
    v73 = *a1;
    v74 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v75 = a1[3];
    if (v75)
    {
      if (v74)
      {
        (*(*v75 + 16))(v75, v73);
        if (v81)
        {
          goto LABEL_43;
        }
      }
    }

LABEL_150:
    LOBYTE(v107) = 0;
    v110 = 0;
    goto LABEL_46;
  }

  v22 = *v21;
  v103 = 0;
  v104 = 0;
  if (v22 >= 0x20000)
  {
    while (1)
    {
      v30 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v100 = v30;
      v101 = v25;
      if ((v25 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v104) == v104)
      {
        v28 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v103, HIDWORD(v104) + 1, &v100);
        *(v103 + HIDWORD(v104)) = *v28;
      }

      else
      {
        *(v103 + HIDWORD(v104)) = v30;
      }

      v29 = ++HIDWORD(v104);
      if (!--v22)
      {
        if (v104 <= v29)
        {
          goto LABEL_31;
        }

        v63 = v103;
        if (v29)
        {
          if (v29 >> 29)
          {
            __break(0xC471u);
            goto LABEL_176;
          }

          v64 = v29;
          v65 = 8 * v29;
          v66 = WTF::fastMalloc((8 * v29));
          LODWORD(v104) = v64;
          v103 = v66;
          if (v66 != v63)
          {
            v67 = v63;
            do
            {
              v68 = *v67;
              v67 = (v67 + 8);
              *v66 = v68;
              v66 = (v66 + 8);
              v65 -= 8;
            }

            while (v65);
          }
        }

        if (v63)
        {
          if (v103 == v63)
          {
            v103 = 0;
            LODWORD(v104) = 0;
          }

          WTF::fastFree(v63, v25);
        }

        goto LABEL_31;
      }
    }
  }

  else
  {
    if (!v22)
    {
LABEL_31:
      std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v79, &v103);
      goto LABEL_40;
    }

    v23 = WTF::fastMalloc((8 * v22));
    LODWORD(v104) = v22;
    v103 = v23;
    while (1)
    {
      v24 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
      v100 = v24;
      v101 = v25;
      if ((v25 & 1) == 0)
      {
        break;
      }

      if (HIDWORD(v104) == v104)
      {
        v26 = WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v103, HIDWORD(v104) + 1, &v100);
        *(v103 + HIDWORD(v104)) = *v26;
      }

      else
      {
        *(v103 + HIDWORD(v104)) = v24;
      }

      ++HIDWORD(v104);
      if (!--v22)
      {
        goto LABEL_31;
      }
    }
  }

  LOBYTE(v79) = 0;
  LOBYTE(v81) = 0;
LABEL_40:
  v31 = v103;
  if (v103)
  {
    v103 = 0;
    LODWORD(v104) = 0;
    WTF::fastFree(v31, v25);
  }

  if ((v81 & 1) == 0)
  {
    goto LABEL_149;
  }

LABEL_43:
  std::optional<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v107, &v79);
  v110 = 1;
  if ((v81 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_44:
  v32 = v79;
  if (v79)
  {
    v79 = 0;
    v80 = 0;
    WTF::fastFree(v32, v27);
  }

LABEL_46:
  v33 = a1[1];
  if ((v110 & 1) == 0)
  {
    v52 = *a1;
    *a1 = 0;
    a1[1] = 0;
    v53 = a1[3];
    if (!v53 || !v33)
    {
      v33 = 0;
      v34 = *a1;
LABEL_110:
      *a1 = 0;
      a1[1] = 0;
      v54 = a1[3];
      if (v54)
      {
        if (v33)
        {
          (*(*v54 + 16))(v54, v34);
          v33 = a1[1];
        }
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_112;
    }

    (*(*v53 + 16))(v53, v52);
    v33 = a1[1];
  }

  v34 = *a1;
  v35 = a1[2];
  if (v33 <= &v35[-*a1])
  {
    goto LABEL_110;
  }

  a1[2] = (v35 + 1);
  if (!v35)
  {
LABEL_112:
    *a1 = 0;
    a1[1] = 0;
    v55 = a1[3];
    if (v55)
    {
      if (v33)
      {
        (*(*v55 + 16))(v55);
        v34 = *a1;
        v33 = a1[1];
        goto LABEL_115;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = 0;
LABEL_115:
    *a1 = 0;
    a1[1] = 0;
    v56 = a1[3];
    if (v56 && v33)
    {
      (*(*v56 + 16))(v56, v34);
    }

    goto LABEL_125;
  }

  v36 = *v35;
  if (v36 >= 2)
  {
    goto LABEL_115;
  }

  if (v36)
  {
    IPC::VectorArgumentCoder<false,WTF::UUID,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v79);
    if ((v81 & 1) == 0)
    {
      v60 = *a1;
      v61 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v62 = a1[3];
      if (!v62 || !v61 || ((*(*v62 + 16))(v62, v60), (v81 & 1) == 0))
      {
LABEL_125:
        LOBYTE(v103) = 0;
        v106 = 0;
        goto LABEL_57;
      }
    }

    std::optional<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(&v103, &v79);
    v106 = 1;
    if ((v81 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    LOBYTE(v79) = 0;
    LOBYTE(v81) = 0;
    std::__optional_move_base<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v103, &v79);
    v106 = 1;
    if (v81 != 1)
    {
      goto LABEL_57;
    }
  }

  v38 = v79;
  if (v79)
  {
    v79 = 0;
    v80 = 0;
    WTF::fastFree(v38, v37);
  }

LABEL_57:
  if ((v106 & 1) == 0)
  {
    v57 = *a1;
    v58 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v59 = a1[3];
    if (v59)
    {
      if (v58)
      {
        (*(*v59 + 16))(v59, v57);
      }
    }
  }

  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v100);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v97);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v94);
  v39 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  v40 = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
  if (*a1)
  {
    if ((v115 & 1) == 0)
    {
      goto LABEL_176;
    }

    v79 = v113;
    LOBYTE(v80) = v114;
    if ((v10 & 1) == 0)
    {
      goto LABEL_176;
    }

    v42 = v40;
    LOBYTE(v81) = 0;
    v82 = 0;
    if (v2)
    {
      v81 = v9;
      v82 = 1;
      v9 = 0;
    }

    if ((v112 & 1) == 0)
    {
      goto LABEL_176;
    }

    std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v83, v111);
    if ((v110 & 1) == 0)
    {
      goto LABEL_176;
    }

    std::__optional_move_base<WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v84, &v107);
    if ((v106 & 1) == 0)
    {
      goto LABEL_176;
    }

    std::__optional_move_base<WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v85, &v103);
    if ((v102 & 1) == 0)
    {
      goto LABEL_176;
    }

    LOBYTE(v86) = 0;
    v87 = 0;
    if (v101 == 1)
    {
      v43 = v100;
      v100 = 0;
      v86 = v43;
      v87 = 1;
    }

    if ((v99 & 1) == 0)
    {
      goto LABEL_176;
    }

    LOBYTE(v88) = 0;
    v89 = 0;
    if (v98 == 1)
    {
      v44 = v97;
      v97 = 0;
      v88 = v44;
      v89 = 1;
    }

    if ((v96 & 1) == 0)
    {
      goto LABEL_176;
    }

    LOBYTE(v90) = 0;
    v91 = 0;
    if (v95 == 1)
    {
      v45 = v94;
      v94 = 0;
      v90 = v45;
      v91 = 1;
    }

    if ((v39 & 0x100) == 0 || (v92 = v39, v42 <= 0xFFu))
    {
LABEL_176:
      __break(1u);
      return;
    }

    v93 = v42;
    WebKit::WebExtensionScriptInjectionParameters::WebExtensionScriptInjectionParameters(a2, &v79);
    a2[160] = 1;
    WebKit::WebExtensionScriptInjectionParameters::~WebExtensionScriptInjectionParameters(&v79, v46);
  }

  else
  {
    *a2 = 0;
    a2[160] = 0;
  }

  if (v96 == 1 && v95 == 1)
  {
    v47 = v94;
    v94 = 0;
    if (v47)
    {
      if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, v41);
      }
    }
  }

  if (v99 == 1 && v98 == 1)
  {
    v48 = v97;
    v97 = 0;
    if (v48)
    {
      if (atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v48, v41);
      }
    }
  }

  if (v102 == 1 && v101 == 1)
  {
    v49 = v100;
    v100 = 0;
    if (v49)
    {
      if (atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v41);
      }
    }
  }

  if (v106 == 1 && v105 == 1)
  {
    v50 = v103;
    if (v103)
    {
      v103 = 0;
      LODWORD(v104) = 0;
      WTF::fastFree(v50, v41);
    }
  }

  if (v110 == 1 && v109 == 1)
  {
    v51 = v107;
    if (v107)
    {
      v107 = 0;
      v108 = 0;
      WTF::fastFree(v51, v41);
    }
  }

  if (v112 == 1 && v111[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v111, v41);
  }

  if ((v10 & v2) == 1)
  {
    if (v9)
    {
      CFRelease(*(v9 + 1));
    }
  }
}

void sub_19D6DDDDC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, WTF *a16, int a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, WTF::StringImpl *a30, char a31, int a32, __int16 a33, char a34, char a35, WTF::StringImpl *a36, char a37, int a38, __int16 a39, char a40, char a41, WTF::StringImpl *a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v50 - 112) == 1 && *(v50 - 120) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v50 - 136, a2);
  }

  if ((v48 & v49) == 1)
  {
    if (v47)
    {
      CFRelease(*(v47 + 8));
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[16] & 1) == 0)
  {
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebKit::WebExtensionContentWorldType,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::UserStyleLevel>(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v14 = a1;
    v8 = a1[3];
    if (v8)
    {
      if (v1)
      {
        (*(*v8 + 16))(v8);
        v3 = *v14;
        v1 = v14[1];
LABEL_9:
        *v14 = 0;
        v14[1] = 0;
        v9 = v14[3];
        if (v9)
        {
          if (v1)
          {
            (*(*v9 + 16))(v9, v3);
            v3 = *v14;
            v1 = v14[1];
            goto LABEL_13;
          }
        }

        else
        {
          v1 = 0;
        }

        v3 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
    goto LABEL_9;
  }

  a1[2] = (v2 + 1);
  if (!v2)
  {
    v14 = a1;
    goto LABEL_9;
  }

  v4 = *v2;
  if (v4 < 2)
  {
    v5 = v4 != 0;
    v6 = 256;
    return v6 | v5;
  }

  v14 = a1;
LABEL_13:
  *v14 = 0;
  v14[1] = 0;
  v10 = v14[3];
  if (v10 && v1)
  {
    (*(*v10 + 16))(v10, v3);
  }

  v11 = *v14;
  v12 = v14[1];
  *v14 = 0;
  v14[1] = 0;
  v13 = v14[3];
  if (v13 && v12)
  {
    (*(*v13 + 16))(v13, v11);
  }

  v6 = 0;
  v5 = 0;
  return v6 | v5;
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionScriptInjectionResultParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 32);

  return IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, (a2 + 48));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebExtensionScriptInjectionResultParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v16);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v13);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v10);
  result = IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>(a1, &v21);
  if (!*a1)
  {
    goto LABEL_32;
  }

  if ((v18 & 1) == 0 || ((v6 = v17, v17 == 1) ? (result = v16, v16 = 0) : (result = 0), (v15 & 1) == 0 || ((v7 = v14, v14 == 1) ? (v8 = v13, v13 = 0) : (v8 = 0), (v12 & 1) == 0 || (*&v19 = v10, BYTE8(v19) = v11, (v22 & 1) == 0))))
  {
    __break(1u);
LABEL_32:
    *a2 = 0;
    *(a2 + 64) = 0;
    goto LABEL_20;
  }

  v20 = v21;
  *a2 = 0;
  *(a2 + 8) = 0;
  if (v6)
  {
    *a2 = result;
    *(a2 + 8) = 1;
    result = 0;
  }

  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (v7)
  {
    *(a2 + 16) = v8;
    *(a2 + 24) = 1;
  }

  v9 = v20;
  *(a2 + 32) = v19;
  *(a2 + 48) = v9;
  *(a2 + 64) = 1;
  if (v6 && result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v5);
  }

LABEL_20:
  if (v15 == 1 && v14 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v18 == 1 && v17 == 1)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  return result;
}

void sub_19D6DE514(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, char a13, int a14, __int16 a15, char a16, char a17, WTF::StringImpl *a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a15 == 1 && a13 == 1 && a12 && atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a12, a2);
  }

  if (a21 == 1 && a19 == 1 && a18 && atomic_fetch_add_explicit(a18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a18, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionRegisteredScriptParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 24);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 56));
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 64);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 88);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 112));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 114));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 116));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 118));

  return IPC::ArgumentCoder<std::optional<WebCore::TextDirection>,void>::encode<IPC::Encoder,std::optional<WebCore::TextDirection> const&>(a1, (a2 + 120));
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionRegisteredScriptParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v85, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v83, a1);
  IPC::Decoder::decode<WTF::String>(a1, &v81);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v4)
      {
        (*(*v34 + 16))(v34);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_81:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35)
    {
      if (v4)
      {
        (*(*v35 + 16))(v35);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_84:
        *a1 = 0;
        *(a1 + 1) = 0;
        v36 = *(a1 + 3);
        if (v36 && v4)
        {
          (*(*v36 + 16))(v36, v6);
        }

        v37 = 0;
        goto LABEL_125;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_84;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_81;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_84;
  }

  if (!*v5)
  {
    v65 = 0;
    LOWORD(v8) = 0;
    v9 = 0x10000;
    goto LABEL_10;
  }

  if (v4 <= v7 - v6)
  {
    v53 = 0;
    v54 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v55 = *(a1 + 3);
    if (v55)
    {
      (*(*v55 + 16))(v55);
      v54 = *a1;
      v53 = *(a1 + 1);
    }
  }

  else
  {
    *(a1 + 2) = v5 + 2;
    if (v5 != -1)
    {
      v8 = *v7;
      if (v8 < 3)
      {
        v9 = 0x10000;
        v65 = 256;
        goto LABEL_10;
      }

      goto LABEL_123;
    }

    v53 = v4;
    v54 = v6;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v56 = *(a1 + 3);
  if (v56 && v53)
  {
    (*(*v56 + 16))(v56, v54, v53);
    v6 = *a1;
    v4 = *(a1 + 1);
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_123:
  *a1 = 0;
  *(a1 + 1) = 0;
  v57 = *(a1 + 3);
  if (v57 && v4)
  {
    (*(*v57 + 16))(v57, v6);
  }

  v37 = 256;
LABEL_125:
  v65 = v37;
  v58 = *a1;
  v59 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v60 = *(a1 + 3);
  if (v60 && v59)
  {
    (*(*v60 + 16))(v60, v58);
  }

  LOWORD(v8) = 0;
  v9 = 0;
LABEL_10:
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v79, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v77, a1);
  v64 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v10 = *(a1 + 1);
  v11 = *(a1 + 2);
  v12 = *a1;
  if (v10 <= &v11[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v10)
      {
        (*(*v38 + 16))(v38);
        v10 = *(a1 + 1);
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_88:
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (v39)
    {
      if (v10)
      {
        (*(*v39 + 16))(v39);
        v12 = *a1;
        v10 = *(a1 + 1);
LABEL_91:
        *a1 = 0;
        *(a1 + 1) = 0;
        v40 = *(a1 + 3);
        if (v40 && v10)
        {
          (*(*v40 + 16))(v40, v12);
        }

        v63 = 0;
        goto LABEL_93;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
    goto LABEL_91;
  }

  *(a1 + 2) = v11 + 1;
  if (!v11)
  {
    goto LABEL_88;
  }

  v13 = *v11;
  if (v13 >= 2)
  {
    goto LABEL_91;
  }

  if (!v13)
  {
    v63 = 0;
    v16 = 0x10000;
    goto LABEL_20;
  }

  v14 = IPC::Decoder::decode<WebCore::BackgroundFetchResult>(a1);
  if ((v14 & 0xFF00) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v63 = v15 | 0x10000000000;
  if (v14 > 0xFFu)
  {
    v16 = (v14 << 8) & 0xFF0000;
    goto LABEL_20;
  }

LABEL_93:
  v41 = *a1;
  v42 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v43 = *(a1 + 3);
  if (v43 && v42)
  {
    (*(*v43 + 16))(v43, v41);
  }

  v16 = 0;
LABEL_20:
  result = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v18 = result;
  v19 = *(a1 + 1);
  v20 = *(a1 + 2);
  v21 = *a1;
  v61 = a2;
  v62 = v16;
  if (v19 <= &v20[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (v44)
    {
      if (v19)
      {
        (*(*v44 + 16))(v44);
        v19 = *(a1 + 1);
      }
    }

    else
    {
      v19 = 0;
    }

LABEL_99:
    *a1 = 0;
    *(a1 + 1) = 0;
    v45 = *(a1 + 3);
    if (v45)
    {
      if (v19)
      {
        (*(*v45 + 16))(v45);
        v21 = *a1;
        v19 = *(a1 + 1);
LABEL_102:
        *a1 = 0;
        *(a1 + 1) = 0;
        v46 = *(a1 + 3);
        if (v46 && v19)
        {
          (*(*v46 + 16))(v46, v21);
        }

        v24 = 0;
        v23 = 0;
        goto LABEL_104;
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = 0;
    goto LABEL_102;
  }

  *(a1 + 2) = v20 + 1;
  if (!v20)
  {
    goto LABEL_99;
  }

  v22 = *v20;
  if (v22 >= 2)
  {
    goto LABEL_102;
  }

  if (!v22)
  {
    v24 = 0;
    v23 = 0;
    v25 = 0x10000;
    goto LABEL_27;
  }

  result = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  v23 = (result & ((result << 7) >> 15));
  v24 = 256;
  if ((result & 0x100) != 0)
  {
    v25 = (result & 0x100) << 8;
    goto LABEL_27;
  }

LABEL_104:
  v47 = *a1;
  v48 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v48)
  {
    result = (*(*result + 16))(result, v47);
  }

  v25 = 0;
LABEL_27:
  v26 = *(a1 + 1);
  v27 = *(a1 + 2);
  v28 = *a1;
  if (v26 <= &v27[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (v49)
    {
      if (v26)
      {
        (*(*v49 + 16))(v49);
        v26 = *(a1 + 1);
      }
    }

    else
    {
      v26 = 0;
    }

LABEL_110:
    *a1 = 0;
    *(a1 + 1) = 0;
    v50 = *(a1 + 3);
    if (v50)
    {
      if (v26)
      {
        (*(*v50 + 16))(v50);
        v28 = *a1;
        v26 = *(a1 + 1);
LABEL_113:
        *a1 = 0;
        *(a1 + 1) = 0;
        v51 = *(a1 + 3);
        if (v51 && v26)
        {
          (*(*v51 + 16))(v51, v28);
        }

        v31 = 0;
        v30 = 0;
        goto LABEL_115;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 0;
    goto LABEL_113;
  }

  *(a1 + 2) = v27 + 1;
  if (!v27)
  {
    goto LABEL_110;
  }

  v29 = *v27;
  if (v29 >= 2)
  {
    goto LABEL_113;
  }

  if (!v29)
  {
    v31 = 0;
    v30 = 0;
    v32 = 0x10000;
    goto LABEL_37;
  }

  result = IPC::Decoder::decode<WebCore::UserStyleLevel>(a1);
  if ((result & 0xFF00) != 0)
  {
    v30 = result;
  }

  else
  {
    v30 = 0;
  }

  v31 = 256;
  if (result > 0xFFu)
  {
    v32 = (result << 8) & 0xFF0000;
    goto LABEL_37;
  }

LABEL_115:
  v28 = *a1;
  v52 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result && v52)
  {
    result = (*(*result + 16))(result, v28);
  }

  v32 = 0;
LABEL_37:
  if (!*a1)
  {
LABEL_78:
    *v61 = 0;
    v61[128] = 0;
    goto LABEL_60;
  }

  if ((v86 & 1) == 0 || (result = std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v66, v85), (v84 & 1) == 0) || (result = std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v67, v83), (v82 & 1) == 0) || (v33 = v81, v81 = 0, v68 = v33, !((v65 | v9) >> 16)) || (v69 = v8 | v65, (v80 & 1) == 0) || (result = std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v70, v79), (v78 & 1) == 0) || (result = std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v71, v77), (v64 & 0x10000) == 0) || (v72 = v64, !((v63 | HIDWORD(v63) | v62) >> 16)) || (v73 = v63 | WORD2(v63), (v18 & 0x10000) == 0) || (v74 = v18, !((v23 | v24 | v25) >> 16)) || (v75 = v23 | v24, !((v30 | v31 | v32) >> 16)))
  {
    __break(1u);
    goto LABEL_78;
  }

  v76 = v30 | v31;
  *(WebKit::WebExtensionRegisteredScriptParameters::WebExtensionRegisteredScriptParameters(v61, v66) + 128) = 1;
  if (v71[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v71, v28);
  }

  if (v70[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v70, v28);
  }

  result = v68;
  v68 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v28);
  }

  if (v67[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v67, v28);
  }

  if (v66[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v66, v28);
  }

LABEL_60:
  if (v78 == 1 && v77[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v77, v28);
  }

  if (v80 == 1 && v79[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v79, v28);
  }

  if (v82 == 1)
  {
    result = v81;
    v81 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v28);
      }
    }
  }

  if (v84 == 1 && v83[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v83, v28);
  }

  if (v86 == 1 && v85[16] == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v85, v28);
  }

  return result;
}

void sub_19D6DEFDC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, WTF::StringImpl *a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, int a43, __int16 a44, char a45, char a46)
{
  if (*(v46 - 160) == 1)
  {
    v47 = *(v46 - 168);
    *(v46 - 168) = 0;
    if (v47)
    {
      if (atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, a2);
      }
    }
  }

  if (*(v46 - 128) == 1 && *(v46 - 136) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v46 - 152, a2);
  }

  if (*(v46 - 96) == 1 && *(v46 - 104) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v46 - 120, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionFrameParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::URL>,void>::encode<IPC::Encoder,std::optional<WTF::URL>>(a1, a2 + 8);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 64);

  return IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, (a2 + 80));
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebExtensionFrameParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *a1;
  if (v5 <= &v6[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v16 = *(a1 + 3);
    if (v16)
    {
      if (v5)
      {
        (*(*v16 + 16))(v16);
        v5 = *(a1 + 1);
      }
    }

    else
    {
      v5 = 0;
    }

LABEL_28:
    *a1 = 0;
    *(a1 + 1) = 0;
    v17 = *(a1 + 3);
    if (v17)
    {
      if (v5)
      {
        (*(*v17 + 16))(v17);
        v8 = 0;
        v7 = *a1;
        v5 = *(a1 + 1);
        goto LABEL_31;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = 0;
    v8 = 0;
    goto LABEL_31;
  }

  *(a1 + 2) = v6 + 1;
  if (!v6)
  {
    goto LABEL_28;
  }

  v8 = *v6;
  if (v8 < 2)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_31:
  *a1 = 0;
  *(a1 + 1) = 0;
  v18 = *(a1 + 3);
  if (v18 && v5)
  {
    (*(*v18 + 16))(v18, v7);
  }

  v9 = 0;
LABEL_5:
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  IPC::Decoder::decode<std::optional<WTF::URL>>(v26, a1, a3);
  v11 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v13 = v12;
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v23);
  result = IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>(a1, &v29);
  if (!*a1)
  {
    goto LABEL_25;
  }

  if ((v9 & 1) == 0 || (v28 & 1) == 0 || (result = std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100](v19, v26), (v13 & 1) == 0) || (*&v21 = v11, (v25 & 1) == 0) || (*(&v21 + 1) = v23, v22[0] = v24, (v30 & 1) == 0))
  {
    __break(1u);
LABEL_25:
    *a2 = 0;
    *(a2 + 96) = 0;
    goto LABEL_18;
  }

  *&v22[8] = v29;
  *a2 = v10;
  result = std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100]((a2 + 8), v19);
  *(a2 + 56) = v21;
  *(a2 + 72) = *v22;
  *(a2 + 88) = *&v22[16];
  *(a2 + 96) = 1;
  if (v20 == 1)
  {
    result = v19[0];
    v19[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v15);
      }
    }
  }

LABEL_18:
  if (v28 == 1 && v27 == 1)
  {
    result = v26[0];
    v26[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v15);
      }
    }
  }

  return result;
}

void sub_19D6DF470(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 == 1 && a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a31 == 1 && a29 == 1 && a24 && atomic_fetch_add_explicit(a24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a24, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionMatchedRuleParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  v4 = *(a2 + 48);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebExtensionMatchedRuleParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::URL>(a1, &v14);
  v4 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (!*a1)
  {
    goto LABEL_14;
  }

  if ((v17 & 1) == 0 || (v9 = v14, v14 = 0, v10 = v9, v11 = v15, v12 = v16, LODWORD(v15) = v15 & 0xFFFFFFFE, (v6 & 1) == 0) || (*&v13 = v4, (v8 & 1) == 0))
  {
    __break(1u);
LABEL_14:
    *a2 = 0;
    *(a2 + 56) = 0;
    goto LABEL_8;
  }

  *(&v13 + 1) = result;
  WTF::URL::URL(a2, &v10);
  *(a2 + 40) = v13;
  *(a2 + 56) = 1;
  result = v10;
  v10 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v8);
  }

LABEL_8:
  if (v17 == 1)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

void sub_19D6DF65C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a22 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionMenuItemParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, (a2 + 24));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 56));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 58));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, (a2 + 60));
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 64);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2 + 88);

  return IPC::ArgumentCoder<std::optional<WTF::OptionSet<WebKit::WebExtensionMenuItemContextType>>,void>::encode<IPC::Encoder,std::optional<WTF::OptionSet<WebKit::WebExtensionMenuItemContextType>> const&>(a1, a2 + 112);
}

void IPC::ArgumentCoder<WebKit::WebExtensionMenuItemParameters,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v76);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v73);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v38 = *(a1 + 3);
    if (v38)
    {
      if (v4)
      {
        (*(*v38 + 16))(v38);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_72:
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (v39)
    {
      if (v4)
      {
        (*(*v39 + 16))(v39);
        v6 = *a1;
        v4 = *(a1 + 1);
LABEL_75:
        *a1 = 0;
        *(a1 + 1) = 0;
        v40 = *(a1 + 3);
        if (v40 && v4)
        {
          (*(*v40 + 16))(v40, v6);
        }

        v10 = 0;
        goto LABEL_90;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_75;
  }

  v7 = v5 + 1;
  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_72;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_75;
  }

  if (!*v5)
  {
    v10 = 0;
    LOWORD(v8) = 0;
    v9 = 0x10000;
    goto LABEL_10;
  }

  if (v4 <= v7 - v6)
  {
    v44 = 0;
    v45 = 0;
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (v46)
    {
      (*(*v46 + 16))(v46);
      v45 = *a1;
      v44 = *(a1 + 1);
    }
  }

  else
  {
    *(a1 + 2) = v5 + 2;
    if (v5 != -1)
    {
      v8 = *v7;
      if (v8 < 4)
      {
        v9 = 0x10000;
        v10 = 256;
        goto LABEL_10;
      }

      goto LABEL_88;
    }

    v44 = v4;
    v45 = v6;
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v47 = *(a1 + 3);
  if (v47 && v44)
  {
    (*(*v47 + 16))(v47, v45, v44);
    v6 = *a1;
    v4 = *(a1 + 1);
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_88:
  *a1 = 0;
  *(a1 + 1) = 0;
  v48 = *(a1 + 3);
  if (v48 && v4)
  {
    (*(*v48 + 16))(v48, v6);
  }

  v10 = 256;
LABEL_90:
  v49 = *a1;
  v50 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v51 = *(a1 + 3);
  if (v51 && v50)
  {
    (*(*v51 + 16))(v51, v49);
  }

  LOWORD(v8) = 0;
  v9 = 0;
LABEL_10:
  IPC::Decoder::decode<WTF::String>(a1, &v71);
  IPC::Decoder::decode<WTF::String>(a1, &v69);
  IPC::Decoder::decode<WTF::String>(a1, &v67);
  v11 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v12 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v13 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v65, a1);
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v63, a1);
  v14 = *(a1 + 1);
  v15 = *(a1 + 2);
  v16 = *a1;
  if (v14 <= &v15[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v41 = *(a1 + 3);
    if (v41)
    {
      if (v14)
      {
        (*(*v41 + 16))(v41);
        v14 = *(a1 + 1);
      }
    }

    else
    {
      v14 = 0;
    }

LABEL_79:
    *a1 = 0;
    *(a1 + 1) = 0;
    v42 = *(a1 + 3);
    if (v42)
    {
      if (v14)
      {
        (*(*v42 + 16))(v42);
        v16 = *a1;
        v14 = *(a1 + 1);
LABEL_82:
        *a1 = 0;
        *(a1 + 1) = 0;
        v43 = *(a1 + 3);
        if (v43 && v14)
        {
          (*(*v43 + 16))(v43, v16);
        }

        v19 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = 0;
    goto LABEL_82;
  }

  *(a1 + 2) = v15 + 1;
  if (!v15)
  {
    goto LABEL_79;
  }

  v17 = *v15;
  if (v17 >= 2)
  {
    goto LABEL_82;
  }

  if (!v17)
  {
    v19 = 0;
    v22 = 0;
    goto LABEL_20;
  }

  v18 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebExtensionMenuItemContextType>>(a1);
  if (v18 >= 0x10000)
  {
    v22 = 0;
    v19 = v18 | 0x10000;
    goto LABEL_20;
  }

  v19 = 0x10000;
LABEL_16:
  v16 = *a1;
  v20 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v21 = *(a1 + 3);
  if (v21 && v20)
  {
    (*(*v21 + 16))(v21, v16);
  }

  v22 = 1;
LABEL_20:
  if (!*a1)
  {
LABEL_67:
    *a2 = 0;
    *(a2 + 120) = 0;
    goto LABEL_38;
  }

  if ((v77 & 1) == 0)
  {
    goto LABEL_66;
  }

  v23 = v76;
  v76 = 0;
  v52 = v23;
  if ((v75 & 1) == 0)
  {
    goto LABEL_66;
  }

  LOBYTE(v53) = 0;
  v54 = 0;
  if (v74 == 1)
  {
    v24 = v73;
    v73 = 0;
    v53 = v24;
    v54 = 1;
  }

  if (!((v10 | v9) >> 16) || (v55 = v8 | v10, (v72 & 1) == 0) || (v25 = v71, v71 = 0, *&v56 = v25, (v70 & 1) == 0) || (v26 = v69, v69 = 0, *(&v56 + 1) = v26, (v68 & 1) == 0) || (v27 = v67, v67 = 0, v57 = v27, (v11 & 0x10000) == 0) || (LOWORD(v58) = v11, (v12 & 0x10000) == 0) || (HIWORD(v58) = v12, (v13 & 0x10000) == 0) || (v59 = v13, (v66 & 1) == 0) || (std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v60, v65), (v64 & 1) == 0) || (std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v61, v63), v22))
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  LOWORD(v62) = v19;
  BYTE2(v62) = BYTE2(v19);
  v28 = v52;
  v52 = 0;
  *a2 = v28;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v54 == 1)
  {
    v29 = v53;
    v53 = 0;
    *(a2 + 8) = v29;
    *(a2 + 16) = 1;
  }

  *(a2 + 24) = v55;
  v30 = v56;
  v56 = 0uLL;
  *(a2 + 32) = v30;
  v31 = v57;
  v57 = 0;
  *(a2 + 48) = v31;
  *(a2 + 56) = v58;
  *(a2 + 60) = v59;
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a2 + 64), v60);
  std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100]((a2 + 88), v61);
  *(a2 + 112) = v62;
  *(a2 + 120) = 1;
  WebKit::WebExtensionMenuItemParameters::~WebExtensionMenuItemParameters(&v52, v32);
LABEL_38:
  if (v64 == 1 && v63[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v63, v16);
  }

  if (v66 == 1 && v65[16] == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v65, v16);
  }

  if (v68 == 1)
  {
    v33 = v67;
    v67 = 0;
    if (v33)
    {
      if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v33, v16);
      }
    }
  }

  if (v70 == 1)
  {
    v34 = v69;
    v69 = 0;
    if (v34)
    {
      if (atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v16);
      }
    }
  }

  if (v72 == 1)
  {
    v35 = v71;
    v71 = 0;
    if (v35)
    {
      if (atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v16);
      }
    }
  }

  if (v75 == 1 && v74 == 1)
  {
    v36 = v73;
    v73 = 0;
    if (v36)
    {
      if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v16);
      }
    }
  }

  if (v77 == 1)
  {
    v37 = v76;
    v76 = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v16);
      }
    }
  }
}

void sub_19D6DFEB0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, char a12, uint64_t a13, WTF::StringImpl *a14, WTF::StringImpl *a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  if (*(v41 - 112) == 1 && *(v41 - 120) == 1)
  {
    v43 = *(v41 - 128);
    *(v41 - 128) = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }
    }
  }

  if (*(v41 - 96) == 1)
  {
    v44 = *(v41 - 104);
    *(v41 - 104) = 0;
    if (v44)
    {
      if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionMenuItemContextParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = (a2 + 176);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 8);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 24);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 88));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 128));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 168));

  return IPC::Encoder::operator<<<BOOL>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebExtensionMenuItemContextParameters,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebExtensionMenuItemContextType>>(a1);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v58);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v55);
  IPC::Decoder::decode<WTF::URL>(a1, &v51);
  IPC::Decoder::decode<WTF::String>(a1, &v49);
  IPC::Decoder::decode<WTF::URL>(a1, &v45);
  IPC::Decoder::decode<WTF::URL>(a1, &v41);
  result = IPC::Decoder::decode<WTF::String>(a1, &v39);
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a1;
  if (v6 <= &v7[-*a1])
  {
    goto LABEL_52;
  }

  a1[2] = (v7 + 1);
  if (!v7)
  {
    goto LABEL_54;
  }

  v9 = *v7;
  if (v9 >= 2)
  {
    v23 = *v7;
    goto LABEL_58;
  }

  for (i = 1; ; i = 0)
  {
    if (v9)
    {
      v11 = i;
    }

    else
    {
      v11 = 0;
    }

    if (!v8)
    {
LABEL_59:
      *a2 = 0;
      *(a2 + 184) = 0;
      goto LABEL_30;
    }

    if (HIWORD(v4))
    {
      LOWORD(v24) = v4;
      if (v60)
      {
        *(&v24 + 1) = v58;
        LOBYTE(v25) = v59;
        if (v57)
        {
          *(&v25 + 1) = v55;
          v26 = v56;
          if (v54)
          {
            v12 = v51;
            v51 = 0;
            v27 = v12;
            v28 = v52;
            v29 = v53;
            LODWORD(v52) = v52 & 0xFFFFFFFE;
            if (v50)
            {
              v13 = v49;
              v49 = 0;
              v30 = v13;
              if (v48)
              {
                v14 = v45;
                v45 = 0;
                v31 = v14;
                v32 = v46;
                v33 = v47;
                LODWORD(v46) = v46 & 0xFFFFFFFE;
                if (v44)
                {
                  v15 = v41;
                  v41 = 0;
                  v34 = v15;
                  v35 = v42;
                  v36 = v43;
                  LODWORD(v42) = v42 & 0xFFFFFFFE;
                  if (v40)
                  {
                    v16 = v39;
                    v39 = 0;
                    v37 = v16;
                    if (i)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_52:
    *a1 = 0;
    a1[1] = 0;
    v21 = a1[3];
    if (v21)
    {
      if (v6)
      {
        (*(*v21 + 16))(v21);
        v6 = a1[1];
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_54:
    *a1 = 0;
    a1[1] = 0;
    v22 = a1[3];
    if (v22)
    {
      if (v6)
      {
        (*(*v22 + 16))(v22);
        v23 = 0;
        v8 = *a1;
        v6 = a1[1];
        goto LABEL_58;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    v23 = 0;
LABEL_58:
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (!result || !v6)
    {
      goto LABEL_59;
    }

    result = (*(*result + 16))(result, v8);
    v8 = *a1;
    v9 = v23;
  }

  v38 = v11;
  *a2 = v24;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  WTF::URL::URL(a2 + 40, &v27);
  v17 = v30;
  v30 = 0;
  *(a2 + 80) = v17;
  WTF::URL::URL(a2 + 88, &v31);
  WTF::URL::URL(a2 + 128, &v34);
  v18 = v34;
  *(a2 + 168) = v37;
  *(a2 + 176) = v38;
  *(a2 + 184) = 1;
  v37 = 0;
  v34 = 0;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v8);
  }

  v19 = v31;
  v31 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v8);
  }

  v20 = v30;
  v30 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v8);
  }

  result = v27;
  v27 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v8);
  }

LABEL_30:
  if (v40 == 1)
  {
    result = v39;
    v39 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v44 == 1)
  {
    result = v41;
    v41 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v48 == 1)
  {
    result = v45;
    v45 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v50 == 1)
  {
    result = v49;
    v49 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v54 == 1)
  {
    result = v51;
    v51 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

void sub_19D6E06EC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, WTF::StringImpl *a31, uint64_t a32, WTF::StringImpl *a33, char a34, WTF::StringImpl *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a34 == 1 && a33 && atomic_fetch_add_explicit(a33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a33, a2);
  }

  if (a40 == 1 && a35 && atomic_fetch_add_explicit(a35, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a35, a2);
  }

  if (*(v40 - 152) == 1)
  {
    v42 = *(v40 - 192);
    *(v40 - 192) = 0;
    if (v42)
    {
      if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, a2);
      }
    }
  }

  if (*(v40 - 136) == 1)
  {
    v43 = *(v40 - 144);
    *(v40 - 144) = 0;
    if (v43)
    {
      if (atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }
    }
  }

  if (*(v40 - 88) == 1)
  {
    v44 = *(v40 - 128);
    *(v40 - 128) = 0;
    if (v44)
    {
      if (atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WTF::OptionSet<WebKit::WebExtensionMenuItemContextType>>(void *a1)
{
  v1 = a1[1];
  v2 = ((a1[2] + 1) & 0xFFFFFFFFFFFFFFFELL);
  v3 = *a1;
  v4 = v2 - *a1;
  v5 = v1 >= v4;
  v6 = v1 - v4;
  if (!v5 || v6 <= 1)
  {
    *a1 = 0;
    a1[1] = 0;
    v17 = a1;
    v12 = a1[3];
    if (v12)
    {
      if (v1)
      {
        (*(*v12 + 16))(v12);
        v3 = *v17;
        v1 = v17[1];
        goto LABEL_13;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_13:
    a1 = v17;
    *v17 = 0;
    v17[1] = 0;
    v13 = v17[3];
    if (v13 && v1)
    {
      (*(*v13 + 16))(v13, v3);
      a1 = v17;
    }

    goto LABEL_14;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v17 = a1;
    goto LABEL_13;
  }

  v8 = *v2;
  if (v8 <= 0x3FF)
  {
    v9 = v8 & 0x300;
    v8 = v8;
    v10 = 0x10000;
    return v8 | v10 | v9;
  }

LABEL_14:
  v14 = *a1;
  v15 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v16 = a1[3];
  if (v16 && v15)
  {
    (*(*v16 + 16))(v16, v14);
  }

  v9 = 0;
  v8 = 0;
  v10 = 0;
  return v8 | v10 | v9;
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionMessageSenderParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebKit::WebExtensionTabParameters>,void>::encode<IPC::Encoder,std::optional<WebKit::WebExtensionTabParameters> const&>(a1, (a2 + 16));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 200);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 216));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 224));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 232));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 280));
  v4 = *(a2 + 272);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebExtensionMessageSenderParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v47 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v42);
  IPC::Decoder::decode<std::optional<WebKit::WebExtensionTabParameters>>(a1, v35);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v32);
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  v7 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  IPC::Decoder::decode<WTF::URL>(a1, &v28);
  result = IPC::Decoder::decode<WTF::UUID>(a1, &v45);
  if (!*a1)
  {
    goto LABEL_48;
  }

  if ((v44 & 1) == 0)
  {
    goto LABEL_47;
  }

  LOBYTE(v12) = 0;
  v13 = 0;
  if (v43 == 1)
  {
    v10 = v42;
    v42 = 0;
    v12 = v10;
    v13 = 1;
  }

  if ((v41 & 1) == 0 || (result = std::__optional_move_base<WebKit::WebExtensionTabParameters,false>::__optional_move_base[abi:sn200100](&v14, v35), (v34 & 1) == 0) || (v20 = v32, v21 = v33, (v6 & 1) == 0) || (v22 = v4, (v7 & 0x100) == 0) || (v23 = v7, (v31 & 1) == 0) || (v11 = v28, v28 = 0, v24 = v11, v25 = v29, v26 = v30, LODWORD(v29) = v29 & 0xFFFFFFFE, (v46 & 1) == 0))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    *a2 = 0;
    a2[288] = 0;
    goto LABEL_27;
  }

  v27 = v45;
  WebKit::WebExtensionMessageSenderParameters::WebExtensionMessageSenderParameters(a2, &v12);
  a2[288] = 1;
  result = v24;
  v24 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v9);
  }

  if (v19 == 1)
  {
    if (v18 == 1)
    {
      result = v17;
      v17 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v9);
        }
      }
    }

    if (v16 == 1)
    {
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v9);
        }
      }
    }
  }

  if (v13 == 1)
  {
    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }
    }
  }

LABEL_27:
  if (v31 == 1)
  {
    result = v28;
    v28 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  if (v41 == 1 && v40 == 1)
  {
    if (v39 == 1)
    {
      result = v38;
      v38 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v9);
        }
      }
    }

    if (v37 == 1)
    {
      result = v36;
      v36 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v9);
        }
      }
    }
  }

  if (v44 == 1 && v43 == 1)
  {
    result = v42;
    v42 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

void sub_19D6E0E00(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, WTF::StringImpl *a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, WTF::StringImpl *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, WTF::StringImpl *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, WTF::StringImpl *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, WTF::StringImpl *a62, char a63)
{
  if (a38 && atomic_fetch_add_explicit(a38, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a38, a2);
  }

  if (a33 == 1)
  {
    if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a19, a2);
    }

    if (a18 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a13, a2);
    }
  }

  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a50 == 1 && a45 && atomic_fetch_add_explicit(a45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a45, a2);
  }

  if (LOBYTE(STACK[0x220]) == 1 && LOBYTE(STACK[0x218]) == 1)
  {
    if (a63 == 1 && a62 && atomic_fetch_add_explicit(a62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a62, a2);
    }

    if (a61 == 1 && a56 && atomic_fetch_add_explicit(a56, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a56, a2);
    }
  }

  if (*(v63 - 104) == 1 && *(v63 - 112) == 1)
  {
    v65 = *(v63 - 120);
    *(v63 - 120) = 0;
    if (v65)
    {
      if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, a2);
      }
    }
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<std::optional<WebKit::WebExtensionTabParameters>>@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<std::optional<WebKit::WebExtensionTabParameters>,void>::decode<IPC::Decoder>(a1, a2);
  if ((a2[184] & 1) == 0)
  {
    v5 = *a1;
    v6 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    result = a1[3];
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D6E1034(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 184) == 1 && *(v2 + 176) == 1)
  {
    if (*(v2 + 72) == 1)
    {
      v4 = *(v2 + 64);
      *(v2 + 64) = 0;
      if (v4)
      {
        if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v4, a2);
        }
      }
    }

    if (*(v2 + 56) == 1)
    {
      v5 = *(v2 + 16);
      *(v2 + 16) = 0;
      if (v5)
      {
        if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }
      }
    }
  }

  _Unwind_Resume(exception_object);
}

IPC::Decoder *IPC::Decoder::decode<WTF::UUID>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::UUID,void>::decode(a1, a2);
  if ((*(a2 + 16) & 1) == 0)
  {

    return IPC::Decoder::markInvalid(a1);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionMessageTargetParameters,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode<IPC::Encoder,std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, a2);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2 + 16);

  return IPC::ArgumentCoder<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>,void>::encode<IPC::Encoder,WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>> const&>(a1, (a2 + 32));
}

IPC::Decoder *IPC::ArgumentCoder<WebKit::WebExtensionMessageTargetParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v11);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v8);
  result = IPC::Decoder::decode<WTF::Markable<WTF::UUID,WTF::MarkableTraits<WTF::UUID>>>(a1, &v14);
  if (!*a1)
  {
    goto LABEL_8;
  }

  if ((v13 & 1) == 0 || (*&v6 = v11, BYTE8(v6) = v12, (v10 & 1) == 0) || (*&v7 = v8, BYTE8(v7) = v9, (v15 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    *a2 = 0;
    *(a2 + 48) = 0;
    return result;
  }

  v5 = v14;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  *(a2 + 48) = 1;
  return result;
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionTabParameters,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::URL>,void>::encode<IPC::Encoder,std::optional<WTF::URL>>(a1, (a2 + 16));
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 64));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, (a2 + 80));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, (a2 + 96));
  IPC::ArgumentCoder<std::optional<WebKit::DoubleSize>,void>::encode<IPC::Encoder,std::optional<WebKit::DoubleSize> const&>(a1, (a2 + 112));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, (a2 + 136));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 152);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 154);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 156);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 158);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 160);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 162);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 164);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 166);

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 168);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebExtensionTabParameters,void>::decode@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v73[2] = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v70);
  IPC::Decoder::decode<std::optional<WTF::URL>>(v67, a1, v3);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v64);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v61);
  IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v58);
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v26 = a1[3];
    if (v26)
    {
      if (v4)
      {
        (*(*v26 + 16))(v26);
        v4 = a1[1];
      }
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_58;
  }

  a1[2] = (v5 + 1);
  if (!v5)
  {
LABEL_58:
    *a1 = 0;
    a1[1] = 0;
    v27 = a1[3];
    if (v27)
    {
      if (v4)
      {
        (*(*v27 + 16))(v27);
        v6 = *a1;
        v4 = a1[1];
        goto LABEL_61;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_61:
    *a1 = 0;
    a1[1] = 0;
    v28 = a1[3];
    if (v28 && v4)
    {
      (*(*v28 + 16))(v28, v6);
    }

    goto LABEL_50;
  }

  v7 = *v5;
  if (v7 >= 2)
  {
    goto LABEL_61;
  }

  if (v7)
  {
    IPC::ArgumentCoder<WebKit::DoublePoint,void>::decode(a1, &v32);
    if (v33)
    {
      v73[0] = *(&v32 + 1);
      *(v73 + 7) = *(&v32 + 1);
      LOBYTE(v31) = v32;
      BYTE4(v31) = 1;
LABEL_7:
      v30 = 1;
      goto LABEL_9;
    }

    v20 = *a1;
    v21 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v22 = a1[3];
    if (v22 && v21)
    {
      (*(*v22 + 16))(v22, v20);
    }

LABEL_50:
    v23 = *a1;
    v24 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v25 = a1[3];
    if (v25 && v24)
    {
      (*(*v25 + 16))(v25, v23);
    }

    v31 = 0;
    goto LABEL_7;
  }

  v30 = 0;
  v31 = 0x100000000;
LABEL_9:
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v55);
  v8 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v9 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v10 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v11 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v12 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v13 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v14 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v15 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  result = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (!*a1)
  {
LABEL_48:
    *a2 = 0;
    a2[176] = 0;
    goto LABEL_36;
  }

  if ((v72 & 1) == 0)
  {
    goto LABEL_47;
  }

  *&v32 = v70;
  BYTE8(v32) = v71;
  if ((v69 & 1) == 0)
  {
    goto LABEL_47;
  }

  v18 = result;
  result = std::__optional_move_base<WTF::URL,false>::__optional_move_base[abi:sn200100](&v33, v67);
  if ((v66 & 1) == 0)
  {
    goto LABEL_47;
  }

  LOBYTE(v35) = 0;
  v36 = 0;
  if (v65 == 1)
  {
    v19 = v64;
    v64 = 0;
    v35 = v19;
    v36 = 1;
  }

  if ((v63 & 1) == 0 || (v37 = v61, v38 = v62, (v60 & 1) == 0) || (v39 = v58, v40 = v59, (v31 & 0x100000000) == 0) || (v41 = v31, *v42 = v73[0], *&v42[7] = *(v73 + 7), v43 = v30, (v57 & 1) == 0) || (v44 = v55, v45 = v56, (v8 & 0x10000) == 0) || (v46 = v8, (v9 & 0x10000) == 0) || (v47 = v9, (v10 & 0x10000) == 0) || (v48 = v10, (v11 & 0x10000) == 0) || (v49 = v11, (v12 & 0x10000) == 0) || (v50 = v12, (v13 & 0x10000) == 0) || (v51 = v13, (v14 & 0x10000) == 0) || (v52 = v14, (v15 & 0x10000) == 0) || (v53 = v15, (v18 & 0x10000) == 0))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v54 = v18;
  result = std::__optional_destruct_base<WebKit::WebExtensionTabParameters,false>::__optional_destruct_base[abi:sn200100]<WebKit::WebExtensionTabParameters>(a2, &v32);
  if (v36 == 1)
  {
    result = v35;
    v35 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  if (v34 == 1)
  {
    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v17);
      }
    }
  }

LABEL_36:
  if (v66 == 1 && v65 == 1)
  {
    result = v64;
    v64 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  if (v69 == 1 && v68 == 1)
  {
    result = v67[0];
    v67[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  return result;
}

void sub_19D6E1804(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, WTF::StringImpl *a21, char a22)
{
  if (*(v22 - 200) == 1 && *(v22 - 208) == 1)
  {
    v24 = *(v22 - 216);
    *(v22 - 216) = 0;
    if (v24)
    {
      if (atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, a2);
      }
    }
  }

  if (*(v22 - 144) == 1 && *(v22 - 152) == 1)
  {
    v25 = *(v22 - 192);
    *(v22 - 192) = 0;
    if (v25)
    {
      if (atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionTabQueryParameters,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WTF::String>,void>::encode<IPC::Encoder,std::optional<WTF::String> const&>(a1, (a2 + 24));
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, (a2 + 40));
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2 + 56);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 58);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 60);
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long> const&>(a1, (a2 + 64));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 82);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 84);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 86);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 88);
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 90);

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 92);
}

WTF::StringImpl *IPC::ArgumentCoder<WebKit::WebExtensionTabQueryParameters,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<std::optional<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>(v45, a1);
  IPC::Decoder::decode<std::optional<WTF::String>>(a1, &v42);
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v39);
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = *(a1 + 3);
    if (v21)
    {
      if (v3)
      {
        (*(*v21 + 16))(v21);
        v3 = *(a1 + 1);
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_44:
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (v22)
    {
      if (v3)
      {
        (*(*v22 + 16))(v22);
        v5 = *a1;
        v3 = *(a1 + 1);
LABEL_47:
        *a1 = 0;
        *(a1 + 1) = 0;
        v23 = *(a1 + 3);
        if (v23 && v3)
        {
          (*(*v23 + 16))(v23, v5);
        }

        v28 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
    goto LABEL_47;
  }

  *(a1 + 2) = v4 + 1;
  if (!v4)
  {
    goto LABEL_44;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    goto LABEL_47;
  }

  if (!v6)
  {
    v28 = 0;
    v8 = 0x10000;
    goto LABEL_8;
  }

  v7 = IPC::Decoder::decode<WebKit::WebExtensionContentWorldType>(a1);
  LODWORD(v28) = (v7 & ((v7 << 7) >> 15));
  HIDWORD(v28) = 256;
  if ((v7 & 0x100) != 0)
  {
    v8 = (v7 & 0x100) << 8;
LABEL_8:
    v27 = v8;
    goto LABEL_9;
  }

LABEL_49:
  v24 = *a1;
  v25 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v26 = *(a1 + 3);
  if (v26 && v25)
  {
    (*(*v26 + 16))(v26, v24);
  }

  v27 = 0;
LABEL_9:
  v9 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v10 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v36);
  v11 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v12 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v13 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v14 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v15 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  v16 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  result = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (!*a1)
  {
LABEL_41:
    *a2 = 0;
    *(a2 + 96) = 0;
    goto LABEL_31;
  }

  if ((v46 & 1) == 0)
  {
    goto LABEL_40;
  }

  v19 = result;
  result = std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v30, v45);
  if ((v44 & 1) == 0)
  {
    goto LABEL_40;
  }

  LOBYTE(v31) = 0;
  v32 = 0;
  if (v43 == 1)
  {
    v20 = v42;
    v42 = 0;
    v31 = v20;
    v32 = 1;
  }

  if ((v41 & 1) == 0 || (*&v33 = v39, BYTE8(v33) = v40, !((v28 | HIDWORD(v28) | v27) >> 16)) || (LOWORD(v34) = v28 | WORD2(v28), (v9 & 0x10000) == 0) || (WORD1(v34) = v9, (v10 & 0x10000) == 0) || (WORD2(v34) = v10, (v38 & 1) == 0) || (*(&v34 + 1) = v36, v35[0] = v37, (v11 & 0x10000) == 0) || (*&v35[8] = v11, (v12 & 0x10000) == 0) || (*&v35[10] = v12, (v13 & 0x10000) == 0) || (*&v35[12] = v13, (v14 & 0x10000) == 0) || (*&v35[14] = v14, (v15 & 0x10000) == 0) || (*&v35[16] = v15, (v16 & 0x10000) == 0) || (*&v35[18] = v16, (v19 & 0x10000) == 0))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  *&v35[20] = v19;
  result = std::__optional_move_base<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a2, v30);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if (v32)
  {
    *(a2 + 24) = v31;
    *(a2 + 32) = 1;
    *(a2 + 40) = v33;
    *(a2 + 56) = v34;
    *(a2 + 72) = *v35;
    *(a2 + 86) = *&v35[14];
    *(a2 + 96) = 1;
    v31 = 0;
  }

  else
  {
    *(a2 + 40) = v33;
    *(a2 + 56) = v34;
    *(a2 + 72) = *v35;
    *(a2 + 86) = *&v35[14];
    *(a2 + 96) = 1;
  }

  if (v30[16] == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v30, v18);
  }

LABEL_31:
  if (v44 == 1 && v43 == 1)
  {
    result = v42;
    v42 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v18);
      }
    }
  }

  if (v46 == 1 && v45[16] == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45, v18);
  }

  return result;
}

void sub_19D6E1E38(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, WTF::StringImpl *a16, char a17)
{
  if (*(v17 - 128) == 1 && *(v17 - 136) == 1)
  {
    v19 = *(v17 - 144);
    *(v17 - 144) = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, a2);
      }
    }
  }

  if (*(v17 - 96) == 1 && *(v17 - 104) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17 - 120, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionWindowParameters,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<unsigned long long>,void>::encode<IPC::Encoder,std::optional<unsigned long long>>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2 + 18);
  IPC::ArgumentCoder<std::optional<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::encode<IPC::Encoder,std::optional<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>> const&>(a1, (a2 + 24));
  IPC::ArgumentCoder<std::optional<WebKit::DoubleRect>,void>::encode<IPC::Encoder,std::optional<WebKit::DoubleRect> const&>(a1, (a2 + 48));
  IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 88);

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 90);
}

uint64_t IPC::ArgumentCoder<WebKit::WebExtensionWindowParameters,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v76 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionTabIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a1, &v72);
  v4 = v2[1];
  v5 = v2[2];
  v6 = *v2;
  if (v4 <= &v5[-*v2])
  {
    *v2 = 0;
    v2[1] = 0;
    v19 = v2[3];
    if (v19)
    {
      if (v4)
      {
        (*(*v19 + 16))(v19);
        v4 = v2[1];
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_30:
    *v2 = 0;
    v2[1] = 0;
    v20 = v2[3];
    if (v20)
    {
      if (v4)
      {
        (*(*v20 + 16))(v20);
        v6 = *v2;
        v4 = v2[1];
LABEL_33:
        *v2 = 0;
        v2[1] = 0;
        v21 = v2[3];
        if (v21 && v4)
        {
          (*(*v21 + 16))(v21, v6);
        }

        v10 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_33;
  }

  v7 = v5 + 1;
  v2[2] = (v5 + 1);
  if (!v5)
  {
    goto LABEL_30;
  }

  if (*v5 >= 2u)
  {
    goto LABEL_33;
  }

  if (!*v5)
  {
    v10 = 0;
    LOWORD(v8) = 0;
    v9 = 0x10000;
    goto LABEL_10;
  }

  if (v4 <= &v7[-v6])
  {
    v22 = 0;
    v23 = 0;
    *v2 = 0;
    v2[1] = 0;
    v24 = v2[3];
    if (v24)
    {
      (*(*v24 + 16))(v24);
      v23 = *v2;
      v22 = v2[1];
    }
  }

  else
  {
    v2[2] = (v5 + 2);
    if (v5 != -1)
    {
      v8 = *v7;
      if (v8 < 4)
      {
        v9 = 0x10000;
        v10 = 256;
        goto LABEL_10;
      }

      goto LABEL_39;
    }

    v22 = v4;
    v23 = v6;
  }

  *v2 = 0;
  v2[1] = 0;
  v25 = v2[3];
  if (v25 && v22)
  {
    (*(*v25 + 16))(v25, v23, v22);
    v6 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_39:
  *v2 = 0;
  v2[1] = 0;
  v26 = v2[3];
  if (v26 && v4)
  {
    (*(*v26 + 16))(v26, v6);
  }

  v10 = 256;
LABEL_41:
  v27 = *v2;
  v4 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  v28 = v2[3];
  if (!v28)
  {
    v6 = 0;
    v4 = 0;
LABEL_43:
    v65 = v10;
LABEL_44:
    *v2 = 0;
    v2[1] = 0;
    v29 = v2[3];
    if (v29)
    {
      if (v4)
      {
        (*(*v29 + 16))(v29, v6);
        v6 = *v2;
        v4 = v2[1];
LABEL_47:
        *v2 = 0;
        v2[1] = 0;
        v30 = v2[3];
        if (v30)
        {
          if (v4)
          {
            (*(*v30 + 16))(v30, v6);
            v6 = *v2;
            v4 = v2[1];
LABEL_50:
            *v2 = 0;
            v2[1] = 0;
            v31 = v2[3];
            if (v31 && v4)
            {
              (*(*v31 + 16))(v31, v6);
            }

            v15 = 0;
            goto LABEL_68;
          }
        }

        else
        {
          v4 = 0;
        }

        v6 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_47;
  }

  if (!v4)
  {
    v6 = 0;
    goto LABEL_43;
  }

  (*(*v28 + 16))(v28, v27);
  LOWORD(v8) = 0;
  v9 = 0;
  v6 = *v2;
  v4 = v2[1];
LABEL_10:
  v65 = v8 | v10;
  v10 |= v9;
  v11 = v2[2];
  if (v4 <= &v11[-v6])
  {
    goto LABEL_44;
  }

  v12 = v11 + 1;
  v2[2] = (v11 + 1);
  if (!v11)
  {
    goto LABEL_47;
  }

  if (*v11 >= 2u)
  {
    goto LABEL_50;
  }

  if (!*v11)
  {
    v15 = 0;
    LOWORD(v13) = 0;
    v14 = 0x10000;
    goto LABEL_19;
  }

  if (v4 <= &v12[-v6])
  {
    v32 = 0;
    v33 = 0;
    *v2 = 0;
    v2[1] = 0;
    v34 = v2[3];
    if (v34)
    {
      (*(*v34 + 16))(v34);
      v33 = *v2;
      v32 = v2[1];
    }
  }

  else
  {
    v2[2] = (v11 + 2);
    if (v11 != -1)
    {
      v13 = *v12;
      if (v13 < 2)
      {
        v14 = 0x10000;
        v15 = 256;
        goto LABEL_19;
      }

      goto LABEL_66;
    }

    v32 = v4;
    v33 = v6;
  }

  *v2 = 0;
  v2[1] = 0;
  v35 = v2[3];
  if (v35 && v32)
  {
    (*(*v35 + 16))(v35, v33, v32);
    v6 = *v2;
    v4 = v2[1];
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_66:
  *v2 = 0;
  v2[1] = 0;
  v36 = v2[3];
  if (v36 && v4)
  {
    (*(*v36 + 16))(v36, v6);
  }

  v15 = 256;
LABEL_68:
  v37 = *v2;
  v38 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  v39 = v2[3];
  if (!v39 || !v38)
  {
    v6 = 0;
    v4 = 0;
    v64 = v15;
    goto LABEL_70;
  }

  (*(*v39 + 16))(v39, v37);
  LOWORD(v13) = 0;
  v14 = 0;
  v6 = *v2;
  v4 = v2[1];
LABEL_19:
  v64 = v13 | v15;
  v15 |= v14;
  v16 = v2[2];
  if (v4 <= &v16[-v6])
  {
LABEL_70:
    *v2 = 0;
    v2[1] = 0;
    v40 = v2[3];
    if (v40)
    {
      if (v4)
      {
        (*(*v40 + 16))(v40, v6);
        v6 = *v2;
        v4 = v2[1];
        goto LABEL_73;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_73:
    *v2 = 0;
    v2[1] = 0;
    v41 = v2[3];
    if (v41)
    {
      if (v4)
      {
        (*(*v41 + 16))(v41, v6);
        v6 = *v2;
        v4 = v2[1];
        goto LABEL_76;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
LABEL_76:
    *v2 = 0;
    v2[1] = 0;
    v42 = v2[3];
    if (v42 && v4)
    {
      (*(*v42 + 16))(v42, v6);
    }

    goto LABEL_77;
  }

  v2[2] = (v16 + 1);
  if (!v16)
  {
    goto LABEL_73;
  }

  v17 = *v16;
  if (v17 >= 2)
  {
    goto LABEL_76;
  }

  if (v17)
  {
    IPC::Decoder::decode<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v2, v66);
    if (v66[16] == 1)
    {
      std::optional<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::optional[abi:sn200100]<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0>(v70, v66);
      v71 = 1;
      if ((v66[16] & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_27;
    }

LABEL_77:
    v70[0] = 0;
    v71 = 0;
    goto LABEL_78;
  }

  v66[0] = 0;
  v66[16] = 0;
  std::__optional_move_base<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](v70, v66);
  v71 = 1;
  if (v66[16] == 1)
  {
LABEL_27:
    WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v66, v18);
  }

LABEL_78:
  v43 = v2[1];
  if ((v71 & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_79:
  v44 = *v2;
  v45 = v2[2];
  if (v43 > &v45[-*v2])
  {
    v2[2] = (v45 + 1);
    if (!v45)
    {
      goto LABEL_106;
    }

    v46 = *v45;
    if (v46 >= 2)
    {
      goto LABEL_109;
    }

    if (!v46)
    {
      v47 = 0;
      v49 = 0;
      v48 = 1;
      goto LABEL_87;
    }

    IPC::ArgumentCoder<WebKit::DoubleRect,void>::decode(v2, v66);
    if (v67)
    {
      v47 = v66[0];
      v75[0] = *&v66[1];
      *(v75 + 15) = *&v66[16];
      v48 = 1;
      goto LABEL_85;
    }

    v44 = *v2;
    v60 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    v59 = v2[3];
    if (!v59 || !v60)
    {
      goto LABEL_114;
    }

LABEL_111:
    (*(*v59 + 16))(v59, v44);
    goto LABEL_114;
  }

  while (1)
  {
    *v2 = 0;
    v2[1] = 0;
    v57 = v2[3];
    if (v57)
    {
      if (v43)
      {
        (*(*v57 + 16))(v57, v44);
        v43 = v2[1];
      }
    }

    else
    {
      v43 = 0;
    }

LABEL_106:
    *v2 = 0;
    v2[1] = 0;
    v58 = v2[3];
    if (v58)
    {
      if (v43)
      {
        (*(*v58 + 16))(v58);
        v44 = *v2;
        v43 = v2[1];
        goto LABEL_109;
      }
    }

    else
    {
      v43 = 0;
    }

    v44 = 0;
LABEL_109:
    *v2 = 0;
    v2[1] = 0;
    v59 = v2[3];
    if (v59 && v43)
    {
      goto LABEL_111;
    }

LABEL_114:
    v61 = *v2;
    v62 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    v63 = v2[3];
    if (v63 && v62)
    {
      (*(*v63 + 16))(v63, v61);
    }

    v48 = 0;
    v47 = 0;
LABEL_85:
    v49 = 1;
LABEL_87:
    v50 = IPC::Decoder::decode<std::optional<BOOL>>(v2);
    result = IPC::Decoder::decode<std::optional<BOOL>>(v2);
    if (!*v2)
    {
      *a2 = 0;
      *(a2 + 96) = 0;
      goto LABEL_97;
    }

    if (v74)
    {
      *v66 = v72;
      v66[8] = v73;
      if (HIWORD(v10))
      {
        *&v66[16] = v65;
        if (HIWORD(v15))
        {
          *&v66[18] = v64;
          if (v71)
          {
            v53 = result;
            v2 = v66;
            std::__optional_move_base<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](&v66[24], v70);
            if (v48)
            {
              v69[0] = v47;
              *&v69[1] = v75[0];
              *&v69[16] = *(v75 + 15);
              v69[32] = v49;
              if ((v50 & 0x10000) != 0)
              {
                *&v69[40] = v50;
                if ((v53 & 0x10000) != 0)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_102:
    v55 = *v2;
    *v2 = 0;
    v2[1] = 0;
    v56 = v2[3];
    if (v56 && v43)
    {
      (*(*v56 + 16))(v56, v55);
      v43 = v2[1];
      goto LABEL_79;
    }

    v43 = 0;
    v44 = *v2;
  }

  *&v69[42] = v53;
  *a2 = *v66;
  *(a2 + 16) = *&v66[16];
  result = std::__optional_move_base<WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,false>::__optional_move_base[abi:sn200100](a2 + 24, &v66[24]);
  v54 = *&v69[16];
  *(a2 + 48) = *v69;
  *(a2 + 64) = v54;
  *(a2 + 76) = *&v69[28];
  *(a2 + 96) = 1;
  if (v68 == 1)
  {
    result = WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v66[24], v52);
  }

LABEL_97:
  if (v71 == 1 && v70[16] == 1)
  {
    return WTF::Vector<WebKit::WebExtensionTabParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v70, v52);
  }

  return result;
}